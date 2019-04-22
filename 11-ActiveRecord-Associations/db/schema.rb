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

ActiveRecord::Schema.define(version: 2019_04_15_161736) do

  create_table "appearances", force: :cascade do |t|
    t.integer "episode_id"
    t.integer "character_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "author_id"
    t.integer "year"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title"
  end

  create_table "puppies", force: :cascade do |t|
    t.string "something"
  end

end
