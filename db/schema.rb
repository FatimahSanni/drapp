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

ActiveRecord::Schema.define(version: 20150603072558) do

  create_table "advices", force: :cascade do |t|
    t.string   "todo",              limit: 255
    t.integer  "medical_record_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "advices", ["medical_record_id"], name: "index_advices_on_medical_record_id", using: :btree

  create_table "counsels", force: :cascade do |t|
    t.text     "counsel",      limit: 65535
    t.integer  "diagnosis_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "counsels", ["diagnosis_id"], name: "index_counsels_on_diagnosis_id", using: :btree

  create_table "diagnoses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "medical_records", force: :cascade do |t|
    t.boolean  "micro_re",     limit: 1, default: false, null: false
    t.boolean  "micro_le",     limit: 1, default: false, null: false
    t.boolean  "haem_re",      limit: 1, default: false, null: false
    t.boolean  "haem_le",      limit: 1, default: false, null: false
    t.boolean  "hard_re",      limit: 1, default: false, null: false
    t.boolean  "hard_le",      limit: 1, default: false, null: false
    t.boolean  "csme_re",      limit: 1, default: false, null: false
    t.boolean  "csme_le",      limit: 1, default: false, null: false
    t.boolean  "irma_re",      limit: 1, default: false, null: false
    t.boolean  "irma_le",      limit: 1, default: false, null: false
    t.boolean  "nvd_re",       limit: 1, default: false, null: false
    t.boolean  "nvd_le",       limit: 1, default: false, null: false
    t.boolean  "nve_re",       limit: 1, default: false, null: false
    t.boolean  "vit_re",       limit: 1, default: false, null: false
    t.boolean  "vit_le",       limit: 1, default: false, null: false
    t.boolean  "trd_re",       limit: 1, default: false, null: false
    t.boolean  "trd_le",       limit: 1, default: false, null: false
    t.boolean  "focal_re",     limit: 1, default: false, null: false
    t.boolean  "focal_le",     limit: 1, default: false, null: false
    t.boolean  "prp_re",       limit: 1, default: false, null: false
    t.boolean  "prp_le",       limit: 1, default: false, null: false
    t.boolean  "post_re",      limit: 1, default: false, null: false
    t.boolean  "post_le",      limit: 1, default: false, null: false
    t.boolean  "hazy_re",      limit: 1, default: false, null: false
    t.boolean  "hazy_le",      limit: 1, default: false, null: false
    t.boolean  "npdr_re",      limit: 1, default: false, null: false
    t.boolean  "mild_re",      limit: 1, default: false, null: false
    t.boolean  "mild_le",      limit: 1, default: false, null: false
    t.boolean  "severe_re",    limit: 1, default: false, null: false
    t.boolean  "severe_le",    limit: 1, default: false, null: false
    t.boolean  "pdr_re",       limit: 1, default: false, null: false
    t.boolean  "pdr_le",       limit: 1, default: false, null: false
    t.boolean  "me_re",        limit: 1, default: false, null: false
    t.boolean  "me_le",        limit: 1, default: false, null: false
    t.boolean  "oct_re",       limit: 1, default: false, null: false
    t.boolean  "oct_le",       limit: 1, default: false, null: false
    t.boolean  "ffa_re",       limit: 1, default: false, null: false
    t.boolean  "ffa_le",       limit: 1, default: false, null: false
    t.boolean  "injection_re", limit: 1, default: false, null: false
    t.boolean  "injection_le", limit: 1, default: false, null: false
    t.boolean  "laser_re",     limit: 1, default: false, null: false
    t.boolean  "laser_le",     limit: 1, default: false, null: false
    t.boolean  "fup_3_re",     limit: 1, default: false, null: false
    t.boolean  "fup_3_le",     limit: 1, default: false, null: false
    t.boolean  "fup_6_re",     limit: 1, default: false, null: false
    t.boolean  "fup_6_le",     limit: 1, default: false, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "patient_id",   limit: 4
    t.boolean  "cotton_re",    limit: 1
    t.boolean  "cotton_le",    limit: 1
    t.boolean  "nve_le",       limit: 1, default: false, null: false
  end

  add_index "medical_records", ["patient_id"], name: "index_medical_records_on_patient_id", using: :btree

  create_table "ocular_diseases", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "medical_record_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ocular_diseases", ["medical_record_id"], name: "index_ocular_diseases_on_medical_record_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "mrn",           limit: 255
    t.string   "name",          limit: 255
    t.string   "gender",        limit: 255
    t.date     "dob"
    t.string   "phone",         limit: 255
    t.boolean  "diabetic",      limit: 1,   default: false, null: false
    t.string   "diab_duration", limit: 255
    t.boolean  "hypertensive",  limit: 1,   default: false, null: false
    t.string   "hyp_duration",  limit: 255
    t.string   "va_re",         limit: 255
    t.string   "va_le",         limit: 255
    t.string   "iop_re",        limit: 255
    t.string   "iop_le",        limit: 255
    t.string   "hbaic",         limit: 255
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "advices", "medical_records"
  add_foreign_key "counsels", "diagnoses"
  add_foreign_key "medical_records", "patients"
  add_foreign_key "ocular_diseases", "medical_records"
end
