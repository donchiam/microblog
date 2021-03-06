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

ActiveRecord::Schema.define(version: 20171020150355) do

  create_table "blog_posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.integer "likes"
    t.datetime "created_at"
    t.index ["user_id"], name: "index_blog_posts_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "blog_post_id"
    t.integer "user_id"
    t.text "comment"
    t.datetime "created_at"
    t.index ["blog_post_id"], name: "index_comments_on_blog_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "image"
    t.string "photo"
  end

end
