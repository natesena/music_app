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

ActiveRecord::Schema.define(version: 20170928220134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.bigint "user_id"
    t.bigint "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_comments_on_song_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "songpic"
    t.string "songfile"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "songpath_file_name"
    t.string "songpath_content_type"
    t.integer "songpath_file_size"
    t.datetime "songpath_updated_at"
    t.string "songcovimg_file_name"
    t.string "songcovimg_content_type"
    t.integer "songcovimg_file_size"
    t.datetime "songcovimg_updated_at"
    t.index ["user_id"], name: "index_songs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "profpic"
    t.string "covpic"
    t.string "chadress"
    t.string "hometown"
    t.text "bio"
    t.string "website"
    t.string "facebook"
    t.string "instagram"
    t.string "twitter"
    t.string "spotify"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "covimg_file_name"
    t.string "covimg_content_type"
    t.integer "covimg_file_size"
    t.datetime "covimg_updated_at"
  end

  add_foreign_key "comments", "songs"
  add_foreign_key "comments", "users"
  add_foreign_key "songs", "users"
end
