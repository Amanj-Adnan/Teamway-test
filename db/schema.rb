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

ActiveRecord::Schema[7.0].define(version: 2022_09_16_141837) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shift_types", force: :cascade do |t|
    t.string "type_name"
    t.string "form_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.bigint "worker_id"
    t.date "working_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shift_type_id"
    t.index ["shift_type_id"], name: "index_shifts_on_shift_type_id"
    t.index ["worker_id"], name: "index_shifts_on_worker_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "shifts", "shift_types"
  add_foreign_key "shifts", "workers"
end
