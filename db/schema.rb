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

ActiveRecord::Schema.define(version: 2021_10_08_122238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string "firstname"
    t.string "middlename"
    t.string "familyname"
    t.string "picture"
    t.datetime "birhday"
    t.string "gender"
    t.string "marriage_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.string "token"
    t.bigint "umbrella_body_id"
    t.bigint "social_group_id"
    t.index ["social_group_id"], name: "index_profiles_on_social_group_id"
    t.index ["umbrella_body_id"], name: "index_profiles_on_umbrella_body_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "social_groups", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_social_groups_on_user_id"
  end

  create_table "societies", force: :cascade do |t|
    t.string "name"
    t.string "meeting_day"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_societies_on_user_id"
  end

  create_table "umbrella_bodies", force: :cascade do |t|
    t.string "img"
    t.text "aim"
    t.string "executives"
    t.string "meeting_day"
    t.string "parton_saint"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "organisation"
    t.string "feastDay"
    t.string "Slogan"
    t.index ["user_id"], name: "index_umbrella_bodies_on_user_id"
  end

  create_table "user_socials", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "social_group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_user_socials_on_profile_id"
    t.index ["social_group_id"], name: "index_user_socials_on_social_group_id"
  end

  create_table "user_societies", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "society_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_user_societies_on_profile_id"
    t.index ["society_id"], name: "index_user_societies_on_society_id"
  end

  create_table "user_umbrellas", force: :cascade do |t|
    t.bigint "umbrella_body_id", null: false
    t.bigint "profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_user_umbrellas_on_profile_id"
    t.index ["umbrella_body_id"], name: "index_user_umbrellas_on_umbrella_body_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "profiles", "social_groups"
  add_foreign_key "profiles", "umbrella_bodies"
  add_foreign_key "profiles", "users"
  add_foreign_key "social_groups", "users"
  add_foreign_key "societies", "users"
  add_foreign_key "umbrella_bodies", "users"
  add_foreign_key "user_socials", "profiles"
  add_foreign_key "user_socials", "social_groups"
  add_foreign_key "user_societies", "profiles"
  add_foreign_key "user_societies", "societies"
  add_foreign_key "user_umbrellas", "profiles"
  add_foreign_key "user_umbrellas", "umbrella_bodies"
end
