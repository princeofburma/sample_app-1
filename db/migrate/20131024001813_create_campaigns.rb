class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.datetime "expiration_date"
    t.string   "ct_campaign_id"
    t.string   "media_type",                           :default => "video",      :null => false
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
    t.string   "video_embed_id"
    t.string   "video_placeholder_file_name"
    t.string   "video_placeholder_content_type"
    t.integer  "video_placeholder_file_size"
    t.datetime "video_placeholder_updated_at"
    t.string   "contributor_reference",                :default => "backer"
    t.string   "progress_text",                        :default => "funded"
    t.string   "primary_call_to_action_button",        :default => "Contribute"
    t.text     "primary_call_to_action_description"
    t.string   "secondary_call_to_action_button",      :default => "Contribute"
    t.text     "secondary_call_to_action_description"
    t.text     "main_content"
    t.text     "checkout_sidebar_content"
    t.text     "confirmation_page_content"
    t.text     "confirmation_email_content"
    t.string   "payment_type",                         :default => "any",        :null => false
    t.float    "min_payment_amount",                   :default => 1.0,          :null => false
    t.float    "fixed_payment_amount",                 :default => 1.0,          :null => false
    t.boolean  "apply_processing_fee",                 :default => false,        :null => false
    t.string   "tweet_text"
    t.string   "facebook_title"
    t.text     "facebook_description"
    t.string   "facebook_image_file_name"
    t.string   "facebook_image_content_type"
    t.integer  "facebook_image_file_size"
    t.datetime "facebook_image_updated_at"
    t.string   "slug"
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
    t.integer  "stats_number_of_contributions"
    t.float    "stats_raised_amount"
    t.float    "stats_tilt_percent"
    t.integer  "stats_unique_contributors"
    t.boolean  "is_expired"
    t.boolean  "is_tilted"
    t.boolean  "is_paid"
    t.boolean  "published_flag",                       :default => false,        :null => false
    t.boolean  "collect_shipping",                     :default => false,        :null => false
    t.string   "goal_type",                            :default => "dollars",    :null => false
    t.float    "goal_dollars",                         :default => 1.0,          :null => false
    t.integer  "goal_orders",                          :default => 1,            :null => false
    t.boolean  "production_flag",                      :default => false,        :null => false
    t.boolean  "include_rewards",                      :default => false,        :null => false
    t.string   "reward_reference",                     :default => "reward",     :null => false
    t.boolean  "collect_additional_info",              :default => false,        :null => false
    t.string   "additional_info_label"
    t.boolean  "include_comments",                     :default => false,        :null => false
    t.string   "comments_shortname"
  end

      t.timestamps
    end
  end
end
  