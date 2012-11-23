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

ActiveRecord::Schema.define(:version => 20121123160543) do

  create_table "statuses", :force => true do |t|
    t.string   "project_id"
    t.string   "project_name"
    t.string   "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "statuses", ["project_id", "status", "created_at"], :name => "index_statuses_on_project_id_and_status_and_created_at"
  add_index "statuses", ["project_id", "status"], :name => "index_statuses_on_project_id_and_status"
  add_index "statuses", ["project_id"], :name => "index_statuses_on_project_id"
  add_index "statuses", ["project_name"], :name => "index_statuses_on_project_name"
  add_index "statuses", ["status"], :name => "index_statuses_on_status"

end
