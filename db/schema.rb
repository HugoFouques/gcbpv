# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_15_084754) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "administrators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_administrators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_posts", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "post_id"
    t.index ["category_id"], name: "index_categories_posts_on_category_id"
    t.index ["post_id"], name: "index_categories_posts_on_post_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "configs", force: :cascade do |t|
    t.bigint "season_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_configs_on_season_id"
  end

  create_table "courses", force: :cascade do |t|
    t.bigint "slot_id", null: false
    t.bigint "instrument_id", null: false
    t.string "start_time"
    t.string "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subscription_id"
    t.index ["instrument_id"], name: "index_courses_on_instrument_id"
    t.index ["slot_id"], name: "index_courses_on_slot_id"
    t.index ["subscription_id"], name: "index_courses_on_subscription_id"
  end

  create_table "editions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "format"
    t.decimal "price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "organizer"
    t.string "website"
    t.integer "status"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "status"
  end

  create_table "kid_workshop_slot_teachers", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "kid_workshop_slot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kid_workshop_slot_id"], name: "index_kid_workshop_slot_teachers_on_kid_workshop_slot_id"
    t.index ["teacher_id"], name: "index_kid_workshop_slot_teachers_on_teacher_id"
  end

  create_table "kid_workshop_slots", force: :cascade do |t|
    t.bigint "kid_workshop_id", null: false
    t.bigint "city_id", null: false
    t.string "slot_time"
    t.integer "day_of_week"
    t.integer "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.index ["city_id"], name: "index_kid_workshop_slots_on_city_id"
    t.index ["kid_workshop_id"], name: "index_kid_workshop_slots_on_kid_workshop_id"
  end

  create_table "kid_workshops", force: :cascade do |t|
    t.string "name"
    t.string "frequency"
    t.text "description"
    t.integer "workshop_type"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price"
  end

  create_table "pathway_slot_teachers", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pathway_slot_id"
    t.index ["pathway_slot_id"], name: "index_pathway_slot_teachers_on_pathway_slot_id"
    t.index ["teacher_id"], name: "index_pathway_slot_teachers_on_teacher_id"
  end

  create_table "pathway_slots", force: :cascade do |t|
    t.bigint "pathway_id", null: false
    t.bigint "city_id", null: false
    t.integer "day_of_week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.index ["city_id"], name: "index_pathway_slots_on_city_id"
    t.index ["pathway_id"], name: "index_pathway_slots_on_pathway_id"
  end

  create_table "pathways", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "payment_method"
    t.decimal "amount"
    t.bigint "subscription_group_id", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_group_id"], name: "index_payments_on_subscription_group_id"
  end

  create_table "payors", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "postcode"
    t.string "city"
    t.text "comment"
  end

  create_table "plans", force: :cascade do |t|
    t.decimal "class_price"
    t.decimal "kids_class_price"
    t.decimal "workshop_price"
    t.integer "obc_markup"
    t.integer "outbounds_markup"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.decimal "early_learning_price"
    t.decimal "kid_discovery_price"
    t.decimal "first_step_discount"
    t.decimal "first_step"
    t.decimal "second_step_discount"
    t.decimal "second_step"
    t.decimal "third_step_discount"
    t.decimal "third_step"
    t.decimal "pathway_price"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "image"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id"
    t.datetime "published_at"
    t.index ["event_id"], name: "index_posts_on_event_id"
  end

  create_table "project_instances", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "season_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.text "comment"
    t.integer "status"
    t.index ["project_id"], name: "index_project_instances_on_project_id"
    t.index ["season_id"], name: "index_project_instances_on_season_id"
  end

  create_table "project_students", force: :cascade do |t|
    t.bigint "project_instance_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_instance_id"], name: "index_project_students_on_project_instance_id"
    t.index ["student_id"], name: "index_project_students_on_student_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.text "comment"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "start_year"
    t.bigint "plan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_seasons_on_plan_id"
  end

  create_table "slots", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "city_id", null: false
    t.integer "day_of_week"
    t.string "start_time"
    t.string "end_time"
    t.integer "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_slots_on_city_id"
    t.index ["teacher_id"], name: "index_slots_on_teacher_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.bigint "instrument_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_specialties_on_instrument_id"
    t.index ["teacher_id"], name: "index_specialties_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "payor_id"
    t.string "street"
    t.string "zip_code"
    t.string "city"
    t.integer "birth_year"
    t.index ["payor_id"], name: "index_students_on_payor_id"
  end

  create_table "subbed_workshops", force: :cascade do |t|
    t.bigint "subscription_id", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "workshop_slot_id"
    t.index ["subscription_id"], name: "index_subbed_workshops_on_subscription_id"
    t.index ["workshop_slot_id"], name: "index_subbed_workshops_on_workshop_slot_id"
  end

  create_table "subscription_groups", force: :cascade do |t|
    t.decimal "amount_paid"
    t.text "comment"
    t.bigint "payor_id", null: false
    t.bigint "season_id", null: false
    t.decimal "donation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payor_id"], name: "index_subscription_groups_on_payor_id"
    t.index ["season_id"], name: "index_subscription_groups_on_season_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "season_id"
    t.integer "status"
    t.boolean "image_consent"
    t.boolean "disability"
    t.boolean "ars"
    t.bigint "subscription_group_id"
    t.bigint "kid_workshop_slot_id"
    t.text "comment"
    t.index ["kid_workshop_slot_id"], name: "index_subscriptions_on_kid_workshop_slot_id"
    t.index ["season_id"], name: "index_subscriptions_on_season_id"
    t.index ["student_id"], name: "index_subscriptions_on_student_id"
    t.index ["subscription_group_id"], name: "index_subscriptions_on_subscription_group_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.text "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.text "comment"
  end

  create_table "teachers_workshops", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "workshop_id"
    t.index ["teacher_id"], name: "index_teachers_workshops_on_teacher_id"
    t.index ["workshop_id"], name: "index_teachers_workshops_on_workshop_id"
  end

  create_table "training_sessions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "guest"
    t.bigint "training_id", null: false
    t.date "date"
    t.string "start_time"
    t.string "end_time"
    t.string "city"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.text "comment"
    t.index ["training_id"], name: "index_training_sessions_on_training_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "session_count"
    t.decimal "price"
    t.bigint "season_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.text "comment"
    t.index ["season_id"], name: "index_trainings_on_season_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workshop_slot_teachers", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "workshop_slot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_workshop_slot_teachers_on_teacher_id"
    t.index ["workshop_slot_id"], name: "index_workshop_slot_teachers_on_workshop_slot_id"
  end

  create_table "workshop_slots", force: :cascade do |t|
    t.bigint "workshop_id", null: false
    t.bigint "city_id", null: false
    t.string "slot_time"
    t.integer "day_of_week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "frequency"
    t.integer "status"
    t.text "comment"
    t.index ["city_id"], name: "index_workshop_slots_on_city_id"
    t.index ["workshop_id"], name: "index_workshop_slots_on_workshop_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "kid_friendly"
    t.integer "status"
    t.text "comment"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "configs", "seasons"
  add_foreign_key "courses", "instruments"
  add_foreign_key "courses", "slots"
  add_foreign_key "kid_workshop_slot_teachers", "kid_workshop_slots"
  add_foreign_key "kid_workshop_slot_teachers", "teachers"
  add_foreign_key "kid_workshop_slots", "cities"
  add_foreign_key "kid_workshop_slots", "kid_workshops"
  add_foreign_key "pathway_slot_teachers", "teachers"
  add_foreign_key "pathway_slots", "cities"
  add_foreign_key "pathway_slots", "pathways"
  add_foreign_key "payments", "subscription_groups"
  add_foreign_key "project_instances", "projects"
  add_foreign_key "project_instances", "seasons"
  add_foreign_key "project_students", "project_instances"
  add_foreign_key "project_students", "students"
  add_foreign_key "seasons", "plans"
  add_foreign_key "slots", "cities"
  add_foreign_key "slots", "teachers"
  add_foreign_key "specialties", "instruments"
  add_foreign_key "specialties", "teachers"
  add_foreign_key "subbed_workshops", "subscriptions"
  add_foreign_key "subscription_groups", "payors"
  add_foreign_key "subscription_groups", "seasons"
  add_foreign_key "subscriptions", "students"
  add_foreign_key "training_sessions", "trainings"
  add_foreign_key "trainings", "seasons"
  add_foreign_key "workshop_slot_teachers", "teachers"
  add_foreign_key "workshop_slot_teachers", "workshop_slots"
  add_foreign_key "workshop_slots", "cities"
  add_foreign_key "workshop_slots", "workshops"
end
