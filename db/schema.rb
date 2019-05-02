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

ActiveRecord::Schema.define(version: 2019_05_02_001702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["username"], name: "index_admins_on_username", unique: true
  end

  create_table "foster_applications", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "email"
    t.string "phone"
    t.string "cell_phone"
    t.text "hear_about"
    t.string "why_volunteer"
    t.boolean "phone_calls_interest"
    t.boolean "home_visits_interest"
    t.boolean "app_review_interest"
    t.boolean "foster_interest"
    t.boolean "fundraising_interest"
    t.boolean "other_interest"
    t.string "pet_name"
    t.string "pet_type"
    t.integer "pet_age"
    t.string "pet_sex"
    t.boolean "pet_neutered"
    t.boolean "aggression_issues"
    t.text "aggression_explanation"
    t.text "vet_hospital_info"
    t.text "references"
    t.boolean "foster_experience"
    t.text "foster_experience_explanation"
    t.boolean "family_allergies"
    t.text "family_allergies_explanation"
    t.integer "number_in_home"
    t.boolean "children_in_home"
    t.integer "children_ages"
    t.string "primary_caretaker"
    t.string "secondary_caretaker"
    t.string "home_type"
    t.boolean "own_home"
    t.string "landlord_name"
    t.string "landlord_phone"
    t.string "pets_allowed"
    t.boolean "fenced_yard"
    t.string "where_foster_kept"
    t.string "where_foster_sleep"
    t.string "where_left_alone"
    t.boolean "family_commitment"
    t.string "signature"
    t.string "date"
    t.string "printed_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
