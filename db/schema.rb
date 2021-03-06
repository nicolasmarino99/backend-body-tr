# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_201_224_170_257) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'img'
    t.index ['user_id'], name: 'index_categories_on_user_id'
  end

  create_table 'progress_items', force: :cascade do |t|
    t.string 'metric'
    t.float 'amount'
    t.bigint 'task_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'name'
    t.text 'progress'
    t.string 'description'
    t.index ['task_id'], name: 'index_progress_items_on_task_id'
  end

  create_table 'tasks', force: :cascade do |t|
    t.string 'name'
    t.bigint 'category_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'img'
    t.index ['category_id'], name: 'index_tasks_on_category_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'password_digest'
    t.string 'email'
    t.float 'weight'
    t.float 'height'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'categories', 'users'
  add_foreign_key 'progress_items', 'tasks'
  add_foreign_key 'tasks', 'categories'
end
