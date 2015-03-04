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

ActiveRecord::Schema.define(version: 20150304011436) do

  create_table "admins", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        default: 0, null: false
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "blogs", force: :cascade do |t|
    t.integer  "admin_id"
    t.string   "title"
    t.text     "content"
    t.integer  "clearance"
    t.integer  "comment_count"
    t.integer  "like_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "blogs", ["admin_id"], name: "index_blogs_on_admin_id"

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "admin_id"
    t.integer  "response_id"
    t.string   "response_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comments", ["admin_id"], name: "index_comments_on_admin_id"
  add_index "comments", ["response_type", "response_id"], name: "index_comments_on_response_type_and_response_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "likes", force: :cascade do |t|
    t.integer  "favorite_id"
    t.string   "favorite_type"
    t.integer  "user_id"
    t.integer  "admin_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "likes", ["admin_id"], name: "index_likes_on_admin_id"
  add_index "likes", ["favorite_type", "favorite_id"], name: "index_likes_on_favorite_type_and_favorite_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "non_watermarked_photos", force: :cascade do |t|
    t.string   "image"
    t.integer  "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "non_watermarked_photos", ["photo_id"], name: "index_non_watermarked_photos_on_photo_id"

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.integer  "clearance"
    t.integer  "admin_id"
    t.integer  "comment_count"
    t.integer  "like_count"
    t.integer  "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "photos", ["admin_id"], name: "index_photos_on_admin_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "clearance"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        default: 0, null: false
    t.datetime "locked_at"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
