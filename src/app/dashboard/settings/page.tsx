'use client'

import { useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase/client'
import { toast } from 'sonner'
import type { Profile } from '@/types/database'

export default function SettingsPage() {
  const [profile, setProfile] = useState<Profile | null>(null)
  const [loading, setLoading] = useState(false)

  useEffect(() => {
    const supabase = createClient()
    supabase.auth.getUser().then(({ data }) => {
      if (data.user) {
        supabase
          .from('profiles')
          .select('*')
          .eq('id', data.user.id)
          .single()
          .then(({ data: p }) => setProfile(p))
      }
    })
  }, [])

  async function handleSave() {
    if (!profile) return
    setLoading(true)

    const supabase = createClient()
    const { error } = await supabase
      .from('profiles')
      .update({
        username: profile.username,
        full_name: profile.full_name,
        bio: profile.bio,
        location: profile.location,
        notification_email: profile.notification_email,
        notification_push: profile.notification_push,
      })
      .eq('id', profile.id)

    if (error) {
      toast.error('Failed to save settings')
    } else {
      toast.success('Settings saved')
    }
    setLoading(false)
  }

  if (!profile) {
    return <div className="font-mono text-xs text-[#6E7B98]">LOADING CONFIGURATION...</div>
  }

  return (
    <div className="max-w-2xl">
      <div className="mb-6 pb-6 border-b border-[#1D263B]">
        <span className="label-gold">System Configuration</span>
        <div className="font-mono text-2xl mt-2 uppercase">Settings</div>
      </div>

      {/* Profile Section */}
      <div className="border border-[#1D263B] mb-6">
        <div className="px-6 py-4 border-b border-[#1D263B] bg-[rgba(20,28,49,0.3)]">
          <span className="text-[11px] font-semibold tracking-[0.1em] uppercase">Profile</span>
        </div>
        <div className="p-6 space-y-4">
          <div className="grid grid-cols-2 gap-4">
            <div>
              <label className="label-gold mb-2 block">Username</label>
              <input
                value={profile.username || ''}
                onChange={(e) => setProfile({ ...profile, username: e.target.value })}
                className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 focus:outline-none focus:border-[#C9A84C] transition-colors"
              />
            </div>
            <div>
              <label className="label-gold mb-2 block">Full Name</label>
              <input
                value={profile.full_name || ''}
                onChange={(e) => setProfile({ ...profile, full_name: e.target.value })}
                className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 focus:outline-none focus:border-[#C9A84C] transition-colors"
              />
            </div>
          </div>
          <div>
            <label className="label-gold mb-2 block">Bio</label>
            <textarea
              value={profile.bio || ''}
              onChange={(e) => setProfile({ ...profile, bio: e.target.value })}
              rows={3}
              className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 focus:outline-none focus:border-[#C9A84C] transition-colors resize-none"
            />
          </div>
          <div>
            <label className="label-gold mb-2 block">Location</label>
            <input
              value={profile.location || ''}
              onChange={(e) => setProfile({ ...profile, location: e.target.value })}
              placeholder="New York, NY"
              className="w-full bg-[#0E1528] border border-[#1D263B] text-foreground font-mono text-xs px-4 py-3 placeholder:text-[#6E7B98] focus:outline-none focus:border-[#C9A84C] transition-colors"
            />
          </div>
        </div>
      </div>

      {/* Notifications Section */}
      <div className="border border-[#1D263B] mb-6">
        <div className="px-6 py-4 border-b border-[#1D263B] bg-[rgba(20,28,49,0.3)]">
          <span className="text-[11px] font-semibold tracking-[0.1em] uppercase">Notifications</span>
        </div>
        <div className="divide-y divide-[#1D263B]">
          <div className="flex items-center justify-between p-6">
            <div>
              <div className="font-mono text-[12px] uppercase">Email Notifications</div>
              <div className="font-mono text-[10px] text-[#6E7B98] mt-1">Receive price alerts via email</div>
            </div>
            <button
              type="button"
              onClick={() => setProfile({ ...profile, notification_email: !profile.notification_email })}
              className={`w-10 h-5 border transition-all relative ${
                profile.notification_email ? 'border-[#C9A84C] bg-[#C9A84C]' : 'border-[#1D263B] bg-[#141C31]'
              }`}
            >
              <span className={`absolute top-0.5 w-3.5 h-3.5 transition-all ${
                profile.notification_email ? 'left-5 bg-[#0A0F1E]' : 'left-0.5 bg-[#6E7B98]'
              }`} />
            </button>
          </div>
          <div className="flex items-center justify-between p-6">
            <div>
              <div className="font-mono text-[12px] uppercase">Push Notifications</div>
              <div className="font-mono text-[10px] text-[#6E7B98] mt-1">Receive push notifications in browser</div>
            </div>
            <button
              type="button"
              onClick={() => setProfile({ ...profile, notification_push: !profile.notification_push })}
              className={`w-10 h-5 border transition-all relative ${
                profile.notification_push ? 'border-[#C9A84C] bg-[#C9A84C]' : 'border-[#1D263B] bg-[#141C31]'
              }`}
            >
              <span className={`absolute top-0.5 w-3.5 h-3.5 transition-all ${
                profile.notification_push ? 'left-5 bg-[#0A0F1E]' : 'left-0.5 bg-[#6E7B98]'
              }`} />
            </button>
          </div>
        </div>
      </div>

      <button
        onClick={handleSave}
        disabled={loading}
        className="py-4 px-8 text-center uppercase font-mono text-xs tracking-wider bg-[#C9A84C] text-[#0A0F1E] border border-[#C9A84C] hover:bg-transparent hover:text-[#C9A84C] transition-all disabled:opacity-50"
      >
        {loading ? 'Saving...' : 'Save Changes'}
      </button>
    </div>
  )
}
