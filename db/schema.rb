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

ActiveRecord::Schema.define(:version => 20140115171559) do

  create_table "student_money_tips_scenarios", :force => true do |t|
    t.string   "name_en"
    t.string   "name_cy"
    t.integer  "position",   :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "student_money_tips_tips", :force => true do |t|
    t.integer  "scenario_id"
    t.text     "text_en"
    t.text     "text_cy"
    t.integer  "position",    :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "student_money_tips_tips", ["scenario_id"], :name => "index_student_money_tips_tips_on_scenario_id"

  create_table "student_money_tips_tools", :force => true do |t|
    t.text     "title_en"
    t.text     "title_cy"
    t.string   "link_text_en"
    t.string   "link_text_cy"
    t.text     "url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
