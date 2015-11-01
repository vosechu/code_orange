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

ActiveRecord::Schema.define(version: 20151101175052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "issues", force: :cascade do |t|
    t.string   "jira_id"
    t.string   "nickname"
    t.datetime "communicated_deploy_at"
    t.datetime "deploy_at"
    t.datetime "completed_at"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "order",                  default: 0, null: false
  end

  create_table "subtasks", force: :cascade do |t|
    t.integer  "issue_id"
    t.string   "name"
    t.datetime "dev_start_at"
    t.datetime "dev_complete_at"
    t.datetime "review_start_at"
    t.datetime "review_complete_at"
    t.datetime "rc_start_at"
    t.datetime "rc_complete_at"
    t.integer  "dev_owner_id"
    t.integer  "qa_owner_id"
    t.integer  "cr_owner_id"
    t.integer  "po_owner_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "subtasks", ["cr_owner_id"], name: "index_subtasks_on_cr_owner_id", using: :btree
  add_index "subtasks", ["dev_owner_id"], name: "index_subtasks_on_dev_owner_id", using: :btree
  add_index "subtasks", ["issue_id"], name: "index_subtasks_on_issue_id", using: :btree
  add_index "subtasks", ["po_owner_id"], name: "index_subtasks_on_po_owner_id", using: :btree
  add_index "subtasks", ["qa_owner_id"], name: "index_subtasks_on_qa_owner_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "order",      default: 0, null: false
  end

  add_foreign_key "subtasks", "issues"
end
