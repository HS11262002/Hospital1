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

ActiveRecord::Schema[7.0].define(version: 2023_02_14_184738) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lab_results", force: :cascade do |t|
    t.string "results"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lab_tests", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "status"
    t.string "referral_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "normal_ranges", force: :cascade do |t|
    t.string "name"
    t.float "lower_range"
    t.float "upper_range"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharmacies", force: :cascade do |t|
    t.integer "dispensed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "radiology_exams", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "speciality"
    t.string "contact"
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["jti"], name: "index_staffs_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "visits", force: :cascade do |t|
    t.integer "visit_no"
    t.string "visit_owner"
    t.date "visit_date"
    t.text "visit_type"
    t.text "visit_category"
    t.string "speciality"
    t.string "member_no"
    t.string "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
