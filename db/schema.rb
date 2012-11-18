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

ActiveRecord::Schema.define(:version => 20121103191913) do

  create_table "teas", :force => true do |t|
    t.string   "name",              :null => false
    t.string   "company"
    t.text     "description",       :null => false
    t.string   "tea_type",          :null => false
    t.integer  "rating"
    t.string   "photo_url",         :null => false
    t.integer  "drink_frequency"
    t.string   "origin"
    t.string   "store_url"
    t.string   "steep_time"
    t.string   "steep_amount"
    t.string   "steep_temperature"
    t.text     "metadata"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
