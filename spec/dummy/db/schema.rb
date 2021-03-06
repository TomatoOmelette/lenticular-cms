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

ActiveRecord::Schema.define(version: 20160628235125) do

  create_table "lenticular_cms_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["slug"], name: "index_lenticular_cms_categories_on_slug"
  end

  create_table "lenticular_cms_category_joins_posts", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "post_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_lenticular_cms_category_joins_posts_on_category_id"
    t.index ["post_id"], name: "index_lenticular_cms_category_joins_posts_on_post_id"
  end

  create_table "lenticular_cms_posts", force: :cascade do |t|
    t.string   "title"
    t.string   "subheading"
    t.text     "content"
    t.string   "author"
    t.string   "image"
    t.string   "slug"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "status",     default: "draft"
    t.string   "visibility", default: "private"
    t.index ["slug"], name: "index_lenticular_cms_posts_on_slug"
  end

end
