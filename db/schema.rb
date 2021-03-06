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

ActiveRecord::Schema.define(version: 20150221090537) do

  create_table "answers", force: :cascade do |t|
    t.string   "content"
    t.boolean  "correct",     default: false
    t.integer  "question_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "polls", force: :cascade do |t|
    t.text     "title"
    t.integer  "total_points"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "content"
    t.integer  "order_number"
    t.boolean  "multiple_choice",  default: false
    t.text     "answered"
    t.integer  "poll_id"
    t.boolean  "correct_answered", default: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

end
