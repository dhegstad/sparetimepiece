'use client'

import { useState, useEffect, useRef } from 'react'
import { createClient } from '@/lib/supabase/client'
import { toast } from 'sonner'

interface MessageRow {
  id: string
  listing_id: string
  sender_id: string
  recipient_id: string
  content: string
  is_read: boolean
  created_at: string
  listings: { title: string } | null
  sender: { username: string; avatar_url: string | null } | null
  recipient: { username: string; avatar_url: string | null } | null
}

interface Conversation {
  listingId: string
  listingTitle: string
  otherUserId: string
  otherUsername: string
  lastMessage: string
  lastMessageAt: string
  unread: number
}

export default function MessagesPage() {
  const [userId, setUserId] = useState<string | null>(null)
  const [messages, setMessages] = useState<MessageRow[]>([])
  const [conversations, setConversations] = useState<Conversation[]>([])
  const [selectedConvo, setSelectedConvo] = useState<string | null>(null)
  const [newMessage, setNewMessage] = useState('')
  const scrollRef = useRef<HTMLDivElement>(null)

  useEffect(() => {
    const supabase = createClient()

    supabase.auth.getUser().then(({ data }) => {
      if (!data.user) return
      setUserId(data.user.id)

      supabase
        .from('messages')
        .select('*, listings(title), sender:profiles!messages_sender_id_fkey(username, avatar_url), recipient:profiles!messages_recipient_id_fkey(username, avatar_url)')
        .or(`sender_id.eq.${data.user.id},recipient_id.eq.${data.user.id}`)
        .order('created_at', { ascending: true })
        .then(({ data: msgs }) => {
          if (msgs) {
            setMessages(msgs as MessageRow[])
            buildConversations(msgs as MessageRow[], data.user!.id)
          }
        })

      supabase
        .channel('messages')
        .on(
          'postgres_changes',
          {
            event: 'INSERT',
            schema: 'public',
            table: 'messages',
            filter: `recipient_id=eq.${data.user.id}`,
          },
          (payload) => {
            setMessages((prev) => [...prev, payload.new as MessageRow])
          }
        )
        .subscribe()
    })
  }, [])

  function buildConversations(msgs: MessageRow[], uid: string) {
    const convos = new Map<string, Conversation>()

    for (const msg of msgs) {
      const key = msg.listing_id
      const isMe = msg.sender_id === uid
      const otherId = isMe ? msg.recipient_id : msg.sender_id
      const otherName = isMe
        ? (msg.recipient?.username || 'Unknown')
        : (msg.sender?.username || 'Unknown')

      if (!convos.has(key)) {
        convos.set(key, {
          listingId: msg.listing_id,
          listingTitle: msg.listings?.title || 'Listing',
          otherUserId: otherId,
          otherUsername: otherName,
          lastMessage: msg.content,
          lastMessageAt: msg.created_at,
          unread: 0,
        })
      }

      const c = convos.get(key)!
      c.lastMessage = msg.content
      c.lastMessageAt = msg.created_at
      if (!isMe && !msg.is_read) c.unread++
    }

    setConversations(
      Array.from(convos.values()).sort(
        (a, b) => new Date(b.lastMessageAt).getTime() - new Date(a.lastMessageAt).getTime()
      )
    )
  }

  const convoMessages = selectedConvo
    ? messages.filter((m) => m.listing_id === selectedConvo)
    : []

  async function sendMessage() {
    if (!newMessage.trim() || !selectedConvo || !userId) return

    const convo = conversations.find((c) => c.listingId === selectedConvo)
    if (!convo) return

    const supabase = createClient()
    const { error } = await supabase.from('messages').insert({
      listing_id: selectedConvo,
      sender_id: userId,
      recipient_id: convo.otherUserId,
      content: newMessage.trim(),
    })

    if (error) {
      toast.error('Failed to send message')
      return
    }

    setNewMessage('')
  }

  return (
    <div>
      <div className="mb-6 pb-6 border-b border-[#1D263B]">
        <span className="label-gold">Communication Terminal</span>
        <div className="font-mono text-2xl mt-2 uppercase">Messages</div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-3 gap-px bg-[#1D263B] border border-[#1D263B] h-[600px]">
        {/* Conversation list */}
        <div className="bg-[#0A0F1E] overflow-y-auto">
          <div className="px-4 py-3 border-b border-[#1D263B] bg-[rgba(20,28,49,0.3)]">
            <span className="text-[11px] font-semibold tracking-[0.1em] uppercase">Conversations</span>
          </div>
          {conversations.length === 0 ? (
            <div className="p-4 font-mono text-[11px] text-[#6E7B98]">No conversations yet</div>
          ) : (
            conversations.map((convo) => (
              <button
                key={convo.listingId}
                onClick={() => setSelectedConvo(convo.listingId)}
                className={`w-full text-left px-4 py-4 border-b border-[#1D263B] transition-colors ${
                  selectedConvo === convo.listingId ? 'bg-[#141C31] border-l-2 border-l-[#C9A84C]' : 'hover:bg-[#0E1528]'
                }`}
              >
                <div className="flex items-center justify-between">
                  <span className="font-mono text-[12px] truncate uppercase">{convo.listingTitle}</span>
                  {convo.unread > 0 && (
                    <span className="bg-[#C9A84C] text-[#0A0F1E] font-mono text-[9px] px-2 py-0.5">
                      {convo.unread}
                    </span>
                  )}
                </div>
                <div className="font-mono text-[10px] text-[#C9A84C] mt-1">{convo.otherUsername}</div>
                <div className="font-mono text-[10px] text-[#6E7B98] truncate mt-1">{convo.lastMessage}</div>
              </button>
            ))
          )}
        </div>

        {/* Message thread */}
        <div className="lg:col-span-2 bg-[#0A0F1E] flex flex-col">
          {selectedConvo ? (
            <>
              <div className="px-4 py-3 border-b border-[#1D263B] bg-[rgba(20,28,49,0.3)]">
                <span className="text-[11px] font-semibold tracking-[0.1em] uppercase">
                  {conversations.find((c) => c.listingId === selectedConvo)?.listingTitle}
                </span>
              </div>
              <div className="flex-1 overflow-y-auto p-4" ref={scrollRef}>
                <div className="space-y-3">
                  {convoMessages.map((msg) => {
                    const isMe = msg.sender_id === userId
                    return (
                      <div
                        key={msg.id}
                        className={`flex ${isMe ? 'justify-end' : 'justify-start'}`}
                      >
                        <div
                          className={`max-w-[70%] px-4 py-3 text-[12px] ${
                            isMe
                              ? 'bg-[#C9A84C] text-[#0A0F1E]'
                              : 'bg-[#141C31] border border-[#1D263B]'
                          }`}
                        >
                          <p>{msg.content}</p>
                          <p className={`text-[9px] mt-2 font-mono ${isMe ? 'text-[#0A0F1E]/60' : 'text-[#6E7B98]'}`}>
                            {new Date(msg.created_at).toLocaleTimeString()}
                          </p>
                        </div>
                      </div>
                    )
                  })}
                </div>
              </div>
              <div className="p-4 border-t border-[#1D263B] flex gap-2">
                <input
                  value={newMessage}
                  onChange={(e) => setNewMessage(e.target.value)}
                  placeholder="TYPE MESSAGE..."
                  onKeyDown={(e) => e.key === 'Enter' && sendMessage()}
                  className="flex-1 bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 uppercase tracking-wider placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
                />
                <button
                  onClick={sendMessage}
                  className="px-6 py-3 text-[10px] uppercase tracking-wider font-mono border border-[#C9A84C] text-[#C9A84C] hover:bg-[#C9A84C] hover:text-[#0A0F1E] transition-all"
                >
                  Send
                </button>
              </div>
            </>
          ) : (
            <div className="flex-1 flex items-center justify-center text-[#6E7B98] font-mono text-xs">
              SELECT A CONVERSATION TO VIEW MESSAGES
            </div>
          )}
        </div>
      </div>
    </div>
  )
}
