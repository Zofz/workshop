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

ActiveRecord::Schema.define(version: 20150301224516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "addresses", force: true do |t|
    t.integer  "customer_id"
    t.integer  "city_id"
    t.string   "street"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id", using: :btree
  add_index "addresses", ["customer_id"], name: "index_addresses_on_customer_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "brands", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands_machine_types", force: true do |t|
    t.integer "brand_id"
    t.integer "machine_type_id"
  end

  add_index "brands_machine_types", ["brand_id"], name: "index_brands_machine_types_on_brand_id", using: :btree
  add_index "brands_machine_types", ["machine_type_id"], name: "index_brands_machine_types_on_machine_type_id", using: :btree

  create_table "cities", force: true do |t|
    t.string   "postal_title"
    t.string   "title"
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "cellphone"
    t.string   "phone"
    t.string   "email"
    t.string   "old_id"
    t.boolean  "company"
    t.string   "company_name"
    t.string   "org_nbr"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "drives", force: true do |t|
    t.integer  "work_id"
    t.integer  "address_id"
    t.datetime "date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drives", ["address_id"], name: "index_drives_on_address_id", using: :btree
  add_index "drives", ["user_id"], name: "index_drives_on_user_id", using: :btree
  add_index "drives", ["work_id"], name: "index_drives_on_work_id", using: :btree

  create_table "machine_models", force: true do |t|
    t.integer  "brand_id"
    t.integer  "machine_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machine_models", ["brand_id"], name: "index_machine_models_on_brand_id", using: :btree
  add_index "machine_models", ["machine_type_id"], name: "index_machine_models_on_machine_type_id", using: :btree

  create_table "machine_types", force: true do |t|
    t.integer  "machine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machine_types", ["machine_id"], name: "index_machine_types_on_machine_id", using: :btree

  create_table "machine_types_parts", force: true do |t|
    t.integer "machine_type_id"
    t.integer "part_id"
  end

  add_index "machine_types_parts", ["machine_type_id"], name: "index_machine_types_parts_on_machine_type_id", using: :btree
  add_index "machine_types_parts", ["part_id"], name: "index_machine_types_parts_on_part_id", using: :btree

  create_table "machine_types_work_types", force: true do |t|
    t.integer "machine_type_id"
    t.integer "work_type_id"
  end

  add_index "machine_types_work_types", ["machine_type_id"], name: "index_machine_types_work_types_on_machine_type_id", using: :btree
  add_index "machine_types_work_types", ["work_type_id"], name: "index_machine_types_work_types_on_work_type_id", using: :btree

  create_table "machines", force: true do |t|
    t.integer  "customer_id"
    t.string   "old_id"
    t.string   "serial_nbr"
    t.integer  "product_id"
    t.date     "manufactured"
    t.string   "engine_nbr"
    t.string   "deck_nbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machines", ["customer_id"], name: "index_machines_on_customer_id", using: :btree
  add_index "machines", ["product_id"], name: "index_machines_on_product_id", using: :btree

  create_table "machines_parts", force: true do |t|
    t.integer "machine_id"
    t.integer "part_id"
  end

  add_index "machines_parts", ["machine_id"], name: "index_machines_parts_on_machine_id", using: :btree
  add_index "machines_parts", ["part_id"], name: "index_machines_parts_on_part_id", using: :btree

  create_table "parts", force: true do |t|
    t.boolean  "on_order"
    t.decimal  "stock"
    t.string   "product_number"
    t.string   "bar_code"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts_work_parts", force: true do |t|
    t.integer "part_id"
    t.integer "work_part_id"
  end

  add_index "parts_work_parts", ["part_id"], name: "index_parts_work_parts_on_part_id", using: :btree
  add_index "parts_work_parts", ["work_part_id"], name: "index_parts_work_parts_on_work_part_id", using: :btree

  create_table "parts_work_types", force: true do |t|
    t.integer "part_id"
    t.integer "work_type_id"
  end

  add_index "parts_work_types", ["part_id"], name: "index_parts_work_types_on_part_id", using: :btree
  add_index "parts_work_types", ["work_type_id"], name: "index_parts_work_types_on_work_type_id", using: :btree

  create_table "products", force: true do |t|
    t.integer  "machine_model_id"
    t.string   "product_number"
    t.string   "order_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["machine_model_id"], name: "index_products_on_machine_model_id", using: :btree

  create_table "storage_rooms", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storage_shelves", force: true do |t|
    t.integer  "storage_room_id"
    t.integer  "level"
    t.integer  "row"
    t.integer  "column"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storage_shelves", ["storage_room_id"], name: "index_storage_shelves_on_storage_room_id", using: :btree

  create_table "storage_spots", force: true do |t|
    t.integer  "storage_shelf_id"
    t.integer  "storage_room_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storage_spots", ["storage_room_id"], name: "index_storage_spots_on_storage_room_id", using: :btree
  add_index "storage_spots", ["storage_shelf_id"], name: "index_storage_spots_on_storage_shelf_id", using: :btree

  create_table "storages", force: true do |t|
    t.integer  "storage_spot_id"
    t.integer  "machine_id"
    t.datetime "taken_out"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storages", ["machine_id"], name: "index_storages_on_machine_id", using: :btree
  add_index "storages", ["storage_spot_id"], name: "index_storages_on_storage_spot_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.integer  "adress_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "work_parts", force: true do |t|
    t.integer  "work_id"
    t.integer  "work_type_id"
    t.boolean  "finished"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_parts", ["user_id"], name: "index_work_parts_on_user_id", using: :btree
  add_index "work_parts", ["work_id"], name: "index_work_parts_on_work_id", using: :btree
  add_index "work_parts", ["work_type_id"], name: "index_work_parts_on_work_type_id", using: :btree

  create_table "work_types", force: true do |t|
    t.string   "title"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", force: true do |t|
    t.integer  "machine_id"
    t.datetime "done_at"
    t.datetime "pickup_at"
    t.string   "notification"
    t.boolean  "finished"
    t.boolean  "invoiced"
    t.string   "invoice_nbr"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "works", ["machine_id"], name: "index_works_on_machine_id", using: :btree
  add_index "works", ["user_id"], name: "index_works_on_user_id", using: :btree

end
