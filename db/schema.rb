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

ActiveRecord::Schema.define(version: 20180228123805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.boolean "IsCancelled"
    t.boolean "IsPaid"
    t.bigint "doctor_id"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "bundledrugs", force: :cascade do |t|
    t.boolean "IsDelivered"
    t.boolean "IsReceived"
    t.bigint "prescription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "drug_id"
    t.index ["drug_id"], name: "index_bundledrugs_on_drug_id"
    t.index ["prescription_id"], name: "index_bundledrugs_on_prescription_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "fulltitle"
    t.bigint "specialty_id"
    t.bigint "practice_id"
    t.string "medicalschool"
    t.string "phone"
    t.boolean "IsDefaultChatbot"
    t.boolean "IsInactive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practice_id"], name: "index_doctors_on_practice_id"
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
  end

  create_table "drugs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "IsAvailable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "phone"
    t.string "birthdate"
    t.string "address"
    t.boolean "InsuranceCardOK"
    t.boolean "IsVerified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "practices", force: :cascade do |t|
    t.string "name"
    t.string "mainSpecialty"
    t.string "about"
    t.string "email"
    t.string "phone"
    t.boolean "AcceptsAutoBill"
    t.boolean "AcceptsAutoAppointment"
    t.boolean "IsLive"
    t.boolean "IsDemo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.boolean "validated"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string "description"
    t.boolean "IsOrdered"
    t.bigint "appointment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_prescriptions_on_appointment_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.boolean "isPopular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "bundledrugs", "drugs"
  add_foreign_key "bundledrugs", "prescriptions"
  add_foreign_key "doctors", "practices"
  add_foreign_key "doctors", "specialties"
  add_foreign_key "prescriptions", "appointments"
end
