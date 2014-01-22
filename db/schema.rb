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

ActiveRecord::Schema.define(:version => 20140122123343) do

  create_table "student_money_tips_audit_records", :force => true do |t|
    t.integer  "user_id"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "action"
    t.datetime "created_at"
  end

  add_index "student_money_tips_audit_records", ["resource_type", "resource_id"], :name => "index_student_money_tips_audit_records_on_resource"

  create_table "student_money_tips_scenarios", :force => true do |t|
    t.string   "name_en"
    t.string   "name_cy"
    t.integer  "position",   :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "student_money_tips_scenarios_tools", :id => false, :force => true do |t|
    t.integer "scenario_id"
    t.integer "tool_id"
  end

  add_index "student_money_tips_scenarios_tools", ["scenario_id"], :name => "index_student_money_tips_scenarios_tools_on_scenario_id"
  add_index "student_money_tips_scenarios_tools", ["tool_id"], :name => "index_student_money_tips_scenarios_tools_on_tool_id"

  create_table "student_money_tips_tips", :force => true do |t|
    t.integer  "scenario_id"
    t.text     "text_en"
    t.text     "text_cy"
    t.integer  "position",    :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "student_money_tips_tips", ["scenario_id"], :name => "index_student_money_tips_tips_on_scenario_id"

  create_table "student_money_tips_tips_users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin",                  :default => false
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "student_money_tips_tips_users", ["email"], :name => "index_student_money_tips_tips_users_on_email", :unique => true
  add_index "student_money_tips_tips_users", ["reset_password_token"], :name => "index_student_money_tips_tips_users_on_reset_password_token", :unique => true

  create_table "student_money_tips_tools", :force => true do |t|
    t.string   "name"
    t.text     "title_en"
    t.text     "title_cy"
    t.string   "link_text_en"
    t.string   "link_text_cy"
    t.text     "url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "student_money_tips_widget_hosts", :force => true do |t|
    t.text     "url"
    t.string   "name"
    t.datetime "created_at"
  end

end
