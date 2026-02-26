export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[]

export interface Database {
  public: {
    Tables: {
      brands: {
        Row: {
          id: string
          name: string
          slug: string
          logo_url: string | null
          description: string | null
          country: string
          founded_year: number | null
          website_url: string | null
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          name: string
          slug: string
          logo_url?: string | null
          description?: string | null
          country?: string
          founded_year?: number | null
          website_url?: string | null
          created_at?: string
          updated_at?: string
        }
        Update: {
          id?: string
          name?: string
          slug?: string
          logo_url?: string | null
          description?: string | null
          country?: string
          founded_year?: number | null
          website_url?: string | null
          updated_at?: string
        }
        Relationships: []
      }
      watches: {
        Row: {
          id: string
          brand_id: string
          reference_number: string
          model_name: string
          nickname: string | null
          collection: string | null
          case_material: string | null
          case_diameter_mm: number | null
          movement_type: 'automatic' | 'manual' | 'quartz' | null
          caliber: string | null
          water_resistance_m: number | null
          dial_color: string | null
          bracelet_material: string | null
          retail_price_usd: number | null
          current_market_price_usd: number | null
          price_trend_30d: number | null
          image_url: string | null
          brand_page_url: string | null
          view_count: number
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          brand_id: string
          reference_number: string
          model_name: string
          nickname?: string | null
          collection?: string | null
          case_material?: string | null
          case_diameter_mm?: number | null
          movement_type?: 'automatic' | 'manual' | 'quartz' | null
          caliber?: string | null
          water_resistance_m?: number | null
          dial_color?: string | null
          bracelet_material?: string | null
          retail_price_usd?: number | null
          current_market_price_usd?: number | null
          price_trend_30d?: number | null
          image_url?: string | null
          brand_page_url?: string | null
        }
        Update: {
          brand_id?: string
          reference_number?: string
          model_name?: string
          nickname?: string | null
          collection?: string | null
          case_material?: string | null
          case_diameter_mm?: number | null
          movement_type?: 'automatic' | 'manual' | 'quartz' | null
          caliber?: string | null
          water_resistance_m?: number | null
          dial_color?: string | null
          bracelet_material?: string | null
          retail_price_usd?: number | null
          current_market_price_usd?: number | null
          price_trend_30d?: number | null
          image_url?: string | null
          brand_page_url?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "watches_brand_id_fkey"
            columns: ["brand_id"]
            isOneToOne: false
            referencedRelation: "brands"
            referencedColumns: ["id"]
          }
        ]
      }
      price_history: {
        Row: {
          id: string
          watch_id: string
          source: string
          price_usd: number
          condition: 'new' | 'unworn' | 'very_good' | 'good' | 'fair' | null
          listing_url: string | null
          scraped_at: string
        }
        Insert: {
          id?: string
          watch_id: string
          source: string
          price_usd: number
          condition?: 'new' | 'unworn' | 'very_good' | 'good' | 'fair' | null
          listing_url?: string | null
          scraped_at?: string
        }
        Update: {
          watch_id?: string
          source?: string
          price_usd?: number
          condition?: 'new' | 'unworn' | 'very_good' | 'good' | 'fair' | null
          listing_url?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "price_history_watch_id_fkey"
            columns: ["watch_id"]
            isOneToOne: false
            referencedRelation: "watches"
            referencedColumns: ["id"]
          }
        ]
      }
      price_aggregates: {
        Row: {
          id: string
          watch_id: string
          period: 'daily' | 'weekly' | 'monthly'
          period_start: string
          avg_price_usd: number | null
          min_price_usd: number | null
          max_price_usd: number | null
          median_price_usd: number | null
          sample_count: number
          source: string | null
          created_at: string
        }
        Insert: {
          id?: string
          watch_id: string
          period: 'daily' | 'weekly' | 'monthly'
          period_start: string
          avg_price_usd?: number | null
          min_price_usd?: number | null
          max_price_usd?: number | null
          median_price_usd?: number | null
          sample_count?: number
          source?: string | null
        }
        Update: {
          avg_price_usd?: number | null
          min_price_usd?: number | null
          max_price_usd?: number | null
          median_price_usd?: number | null
          sample_count?: number
        }
        Relationships: [
          {
            foreignKeyName: "price_aggregates_watch_id_fkey"
            columns: ["watch_id"]
            isOneToOne: false
            referencedRelation: "watches"
            referencedColumns: ["id"]
          }
        ]
      }
      profiles: {
        Row: {
          id: string
          username: string | null
          full_name: string | null
          avatar_url: string | null
          bio: string | null
          location: string | null
          notification_email: boolean
          notification_push: boolean
          created_at: string
          updated_at: string
        }
        Insert: {
          id: string
          username?: string | null
          full_name?: string | null
          avatar_url?: string | null
          bio?: string | null
          location?: string | null
          notification_email?: boolean
          notification_push?: boolean
        }
        Update: {
          username?: string | null
          full_name?: string | null
          avatar_url?: string | null
          bio?: string | null
          location?: string | null
          notification_email?: boolean
          notification_push?: boolean
        }
        Relationships: []
      }
      listings: {
        Row: {
          id: string
          seller_id: string
          watch_id: string | null
          title: string
          description: string | null
          price_usd: number
          condition: 'new' | 'unworn' | 'very_good' | 'good' | 'fair'
          has_box: boolean
          has_papers: boolean
          year_of_purchase: number | null
          location: string | null
          status: 'draft' | 'active' | 'sold' | 'removed'
          view_count: number
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          seller_id: string
          watch_id?: string | null
          title: string
          description?: string | null
          price_usd: number
          condition: 'new' | 'unworn' | 'very_good' | 'good' | 'fair'
          has_box?: boolean
          has_papers?: boolean
          year_of_purchase?: number | null
          location?: string | null
          status?: 'draft' | 'active' | 'sold' | 'removed'
        }
        Update: {
          watch_id?: string | null
          title?: string
          description?: string | null
          price_usd?: number
          condition?: 'new' | 'unworn' | 'very_good' | 'good' | 'fair'
          has_box?: boolean
          has_papers?: boolean
          year_of_purchase?: number | null
          location?: string | null
          status?: 'draft' | 'active' | 'sold' | 'removed'
        }
        Relationships: [
          {
            foreignKeyName: "listings_seller_id_fkey"
            columns: ["seller_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "listings_watch_id_fkey"
            columns: ["watch_id"]
            isOneToOne: false
            referencedRelation: "watches"
            referencedColumns: ["id"]
          }
        ]
      }
      listing_images: {
        Row: {
          id: string
          listing_id: string
          storage_path: string
          display_order: number
          created_at: string
        }
        Insert: {
          id?: string
          listing_id: string
          storage_path: string
          display_order?: number
        }
        Update: {
          storage_path?: string
          display_order?: number
        }
        Relationships: [
          {
            foreignKeyName: "listing_images_listing_id_fkey"
            columns: ["listing_id"]
            isOneToOne: false
            referencedRelation: "listings"
            referencedColumns: ["id"]
          }
        ]
      }
      price_alerts: {
        Row: {
          id: string
          user_id: string
          watch_id: string
          target_price_usd: number
          direction: 'above' | 'below'
          is_active: boolean
          last_triggered_at: string | null
          created_at: string
        }
        Insert: {
          id?: string
          user_id: string
          watch_id: string
          target_price_usd: number
          direction: 'above' | 'below'
          is_active?: boolean
        }
        Update: {
          target_price_usd?: number
          direction?: 'above' | 'below'
          is_active?: boolean
          last_triggered_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "price_alerts_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "price_alerts_watch_id_fkey"
            columns: ["watch_id"]
            isOneToOne: false
            referencedRelation: "watches"
            referencedColumns: ["id"]
          }
        ]
      }
      watchlist_items: {
        Row: {
          id: string
          user_id: string
          watch_id: string
          notes: string | null
          created_at: string
        }
        Insert: {
          id?: string
          user_id: string
          watch_id: string
          notes?: string | null
        }
        Update: {
          notes?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "watchlist_items_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "watchlist_items_watch_id_fkey"
            columns: ["watch_id"]
            isOneToOne: false
            referencedRelation: "watches"
            referencedColumns: ["id"]
          }
        ]
      }
      messages: {
        Row: {
          id: string
          listing_id: string
          sender_id: string
          recipient_id: string
          content: string
          is_read: boolean
          created_at: string
        }
        Insert: {
          id?: string
          listing_id: string
          sender_id: string
          recipient_id: string
          content: string
          is_read?: boolean
        }
        Update: {
          is_read?: boolean
        }
        Relationships: [
          {
            foreignKeyName: "messages_listing_id_fkey"
            columns: ["listing_id"]
            isOneToOne: false
            referencedRelation: "listings"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "messages_sender_id_fkey"
            columns: ["sender_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "messages_recipient_id_fkey"
            columns: ["recipient_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          }
        ]
      }
      saved_searches: {
        Row: {
          id: string
          user_id: string
          name: string
          filters: Json
          notify: boolean
          created_at: string
        }
        Insert: {
          id?: string
          user_id: string
          name: string
          filters?: Json
          notify?: boolean
        }
        Update: {
          name?: string
          filters?: Json
          notify?: boolean
        }
        Relationships: [
          {
            foreignKeyName: "saved_searches_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          }
        ]
      }
      scrape_runs: {
        Row: {
          id: string
          source: string
          status: 'running' | 'completed' | 'failed'
          records_found: number
          records_inserted: number
          records_skipped: number
          error_message: string | null
          started_at: string
          completed_at: string | null
        }
        Insert: {
          id?: string
          source: string
          status?: 'running' | 'completed' | 'failed'
          records_found?: number
          records_inserted?: number
          records_skipped?: number
          error_message?: string | null
          completed_at?: string | null
        }
        Update: {
          status?: 'running' | 'completed' | 'failed'
          records_found?: number
          records_inserted?: number
          records_skipped?: number
          error_message?: string | null
          completed_at?: string | null
        }
        Relationships: []
      }
      watch_market_links: {
        Row: {
          id: string
          watch_id: string
          source: string
          source_display_name: string
          url: string
          is_active: boolean
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          watch_id: string
          source: string
          source_display_name: string
          url: string
          is_active?: boolean
        }
        Update: {
          source?: string
          source_display_name?: string
          url?: string
          is_active?: boolean
        }
        Relationships: [
          {
            foreignKeyName: "watch_market_links_watch_id_fkey"
            columns: ["watch_id"]
            isOneToOne: false
            referencedRelation: "watches"
            referencedColumns: ["id"]
          }
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      increment_view_count: {
        Args: { table_name: string; row_id: string }
        Returns: void
      }
      aggregate_daily_prices: {
        Args: { target_date?: string }
        Returns: void
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

// Convenience types
export type Brand = Database['public']['Tables']['brands']['Row']
export type Watch = Database['public']['Tables']['watches']['Row']
export type WatchWithBrand = Watch & { brands: Brand }
export type PriceHistory = Database['public']['Tables']['price_history']['Row']
export type PriceAggregate = Database['public']['Tables']['price_aggregates']['Row']
export type Profile = Database['public']['Tables']['profiles']['Row']
export type Listing = Database['public']['Tables']['listings']['Row']
export type ListingImage = Database['public']['Tables']['listing_images']['Row']
export type PriceAlert = Database['public']['Tables']['price_alerts']['Row']
export type WatchlistItem = Database['public']['Tables']['watchlist_items']['Row']
export type Message = Database['public']['Tables']['messages']['Row']
export type SavedSearch = Database['public']['Tables']['saved_searches']['Row']
export type ScrapeRun = Database['public']['Tables']['scrape_runs']['Row']

export type WatchMarketLink = Database['public']['Tables']['watch_market_links']['Row']

export type WatchWithLinks = WatchWithBrand & {
  watch_market_links: WatchMarketLink[]
}

export type ListingWithDetails = Listing & {
  profiles: Profile
  watches: WatchWithBrand | null
  listing_images: ListingImage[]
}
