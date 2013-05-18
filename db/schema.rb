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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130518185042) do

  create_table "contests", :force => true do |t|
    t.string   "image_url"
    t.integer  "team_admin_id"
    t.integer  "event_id"
    t.text     "description"
    t.string   "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "stubhub_eventId"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "name"
    t.string   "description"
    t.string   "image_url"
    t.string   "team_1"
    t.string   "team_2"
    t.string   "date"
  end

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.integer  "scheme_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schemes", :force => true do |t|
    t.string   "type"
    t.string   "creator_id"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image_url"
    t.string   "team_name"
    t.integer  "event_id"
    t.boolean  "is_endorsed"
    t.string   "endorsed_by"
  end

  create_table "schemes_users", :force => true do |t|
    t.integer "user_id"
    t.integer "scheme_id"
  end

  create_table "team_admins", :force => true do |t|
    t.string   "team_name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_events", :force => true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "left"
    t.integer  "top"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "stubhub_userId"
    t.string   "seat"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
  end

end

