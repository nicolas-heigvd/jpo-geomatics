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

ActiveRecord::Schema.define(version: 2020_03_13_144610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "pseudo", limit: 25
    t.string "email", limit: 50
    t.integer "score_geo", limit: 2
    t.integer "score_gci", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score_gen", limit: 2
    t.index ["pseudo"], name: "index_players_on_pseudo", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "pseudo", limit: 25
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pseudo"], name: "index_users_on_pseudo", unique: true
  end

end
