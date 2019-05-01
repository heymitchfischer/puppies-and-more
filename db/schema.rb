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

ActiveRecord::Schema.define(version: 2019_05_01_002149) do

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

  create_table "adoption_applications", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "cell_phone"
    t.string "work_phone"
    t.string "email"
    t.text "hear_about"
    t.string "own_rent"
    t.string "current_address_length"
    t.boolean "future_move"
    t.string "home_type"
    t.boolean "lease_permit"
    t.boolean "pet_restrictions"
    t.text "pet_restrictions_description"
    t.string "landlord_name"
    t.string "landlord_phone"
    t.boolean "volunteer_visit"
    t.string "relationship_status"
    t.string "household_adults"
    t.string "household_children"
    t.text "household_other"
    t.string "occupations"
    t.string "out_of_home_hours"
    t.boolean "work_from_home"
    t.text "why_adopt"
    t.text "house_training_plan"
    t.text "pet_unwanted"
    t.boolean "behavior_advice"
    t.text "other_pets"
    t.string "pet_gender"
    t.string "pet_size"
    t.integer "pet_age_min"
    t.integer "pet_age_max"
    t.boolean "lifetime_commitment"
    t.string "emergency_care"
    t.text "day_stay"
    t.text "night_stay"
    t.string "fence_type"
    t.boolean "fence_enclosed"
    t.string "fence_height"
    t.text "pet_typical_day"
    t.text "vacation_plans"
    t.boolean "pet_failure"
    t.text "moving_plan"
    t.boolean "emergency_expense"
    t.boolean "general_expense"
    t.boolean "puppy_class"
    t.boolean "obedience_class"
    t.string "pet_books"
    t.boolean "breed_research"
    t.boolean "obedience_recommend"
    t.text "obedience_recommend_description"
    t.boolean "obedience_pay"
    t.string "current_vet_name"
    t.string "current_vet_phone"
    t.string "past_vet_name"
    t.string "past_vet_phone"
    t.text "references"
    t.string "assisting_name"
    t.string "assisting_phone"
    t.text "additional_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
