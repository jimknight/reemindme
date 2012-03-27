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

ActiveRecord::Schema.define(:version => 20120327000948) do

  create_table "reminders", :force => true do |t|
    t.date     "date"
    t.datetime "time"
    t.text     "title"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "processed",  :default => false
  end

  create_table "requests", :force => true do |t|
    t.text     "phrase"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "text_msgs", :force => true do |t|
    t.string   "AccountSid"
    t.string   "Body"
    t.string   "ToZip"
    t.string   "FromState"
    t.string   "ToCity"
    t.string   "SmsSid"
    t.string   "ToState"
    t.string   "To"
    t.string   "ToCountry"
    t.string   "FromCountry"
    t.string   "SmsMessageSid"
    t.string   "ApiVersion"
    t.string   "FromCity"
    t.string   "SmsStatus"
    t.string   "From"
    t.string   "FromZip"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
