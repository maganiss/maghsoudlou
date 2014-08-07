# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140804054947) do

  create_table "activitycalories", force: true do |t|
    t.integer  "activity_id"
    t.string   "activity_name"
    t.float    "activity_calory"
    t.time     "activity_unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badges_sashes", force: true do |t|
    t.integer  "badge_id"
    t.integer  "sash_id"
    t.boolean  "notified_user", default: false
    t.datetime "created_at"
  end

  add_index "badges_sashes", ["badge_id", "sash_id"], name: "index_badges_sashes_on_badge_id_and_sash_id"
  add_index "badges_sashes", ["badge_id"], name: "index_badges_sashes_on_badge_id"
  add_index "badges_sashes", ["sash_id"], name: "index_badges_sashes_on_sash_id"

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.text     "comment_content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "confarticles", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "abstract"
    t.string   "en_field"
    t.string   "fa_field"
    t.string   "conf_name"
    t.date     "conf_date"
    t.string   "conf_location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "expert_score"
  end

  create_table "consultations", force: true do |t|
    t.integer  "status_id"
    t.float    "consultation_bmi"
    t.float    "consultation_needed_calory"
    t.float    "consultation_overweight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decisions", force: true do |t|
    t.integer  "user_id"
    t.integer  "decision_type"
    t.datetime "decision_start_time"
    t.datetime "decision_end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emotions", force: true do |t|
    t.integer  "user_id"
    t.datetime "emotion_date"
    t.text     "emotion_content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_reminders", force: true do |t|
    t.integer  "user_id"
    t.string   "subject"
    t.text     "description"
    t.datetime "event_date"
    t.datetime "reminder_date"
    t.string   "publicity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exersices", force: true do |t|
    t.integer  "exercise_name"
    t.integer  "activity_calory_id"
    t.integer  "target_id"
    t.time     "exercise_duration"
    t.datetime "exercise_time"
    t.float    "exercise_burnt_calory"
    t.integer  "exercise_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experts", force: true do |t|
    t.string   "expert_name"
    t.string   "expert_family"
    t.string   "expert_major"
    t.string   "expert_degree"
    t.text     "expert_address"
    t.string   "expert_contact_number"
    t.string   "expert_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foodcalories", force: true do |t|
    t.integer  "food_id"
    t.string   "food_name"
    t.float    "food_calory"
    t.float    "food_unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.integer  "friendship_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fullcalendar_engine_event_series", force: true do |t|
    t.integer  "frequency",  default: 1
    t.string   "period",     default: "monthly"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fullcalendar_engine_events", force: true do |t|
    t.string   "title"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",         default: false
    t.text     "description"
    t.integer  "event_series_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fullcalendar_engine_events", ["event_series_id"], name: "index_fullcalendar_engine_events_on_event_series_id"

  create_table "intakes", force: true do |t|
    t.integer  "intake_name"
    t.integer  "food_calory_id"
    t.integer  "target_id"
    t.float    "intake_amount"
    t.float    "intake_recieved_calory"
    t.datetime "intake_time"
    t.integer  "intake_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journalarticles", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "abstract"
    t.string   "en_field"
    t.string   "fa_field"
    t.string   "journal_name"
    t.integer  "journal_publishyear"
    t.integer  "journal_volume"
    t.string   "journal_pages"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "expert_score"
  end

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "likable_id"
    t.string   "likable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merit_actions", force: true do |t|
    t.integer  "user_id"
    t.string   "action_method"
    t.integer  "action_value"
    t.boolean  "had_errors",    default: false
    t.string   "target_model"
    t.integer  "target_id"
    t.boolean  "processed",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merit_activity_logs", force: true do |t|
    t.integer  "action_id"
    t.string   "related_change_type"
    t.integer  "related_change_id"
    t.string   "description"
    t.datetime "created_at"
  end

  create_table "merit_score_points", force: true do |t|
    t.integer  "score_id"
    t.integer  "num_points", default: 0
    t.string   "log"
    t.datetime "created_at"
  end

  create_table "merit_scores", force: true do |t|
    t.integer "sash_id"
    t.string  "category", default: "default"
  end

  create_table "notifications", force: true do |t|
    t.string   "notifiable_type"
    t.integer  "notifiable_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presentations", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "fa_field"
    t.string   "en_field"
    t.string   "abstract"
    t.string   "creator"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "expert_score"
  end

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "profile_name"
    t.datetime "profile_birth_date"
    t.integer  "profile_gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "profile_gradstat"
  end

  create_table "progressreports", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "abstract"
    t.string   "en_field"
    t.string   "fa_field"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "expert_score"
  end

  create_table "proposals", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "abstract"
    t.string   "en_field"
    t.string   "fa_field"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "expert_score"
  end

  create_table "sashes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.integer  "user_id"
    t.float    "status_weight"
    t.datetime "status_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", force: true do |t|
    t.integer  "decision_id"
    t.integer  "target_type"
    t.datetime "target_start_date"
    t.datetime "target_timetoreach"
    t.boolean  "target_is_achieved"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.float    "target_amount"
  end

  create_table "techreports", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "abstract"
    t.string   "en_field"
    t.string   "fa_field"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "expert_score"
  end

  create_table "theses", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "fa_field"
    t.string   "en_field"
    t.string   "abstract"
    t.string   "professor"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "expert_score"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sash_id"
    t.integer  "level",                  default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
