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

ActiveRecord::Schema[7.0].define(version: 2022_11_07_210402) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "new_reports", force: :cascade do |t|
    t.string "report_name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_reports_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "new_report_id", null: false
    t.index ["new_report_id", "user_id"], name: "index_new_reports_users_on_new_report_id_and_user_id"
    t.index ["user_id", "new_report_id"], name: "index_new_reports_users_on_user_id_and_new_report_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "task_id"
    t.string "data"
    t.bigint "new_report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["new_report_id"], name: "index_reports_on_new_report_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
