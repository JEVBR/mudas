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

ActiveRecord::Schema[7.1].define(version: 2024_02_12_023939) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "betweens", force: :cascade do |t|
    t.bigint "tree_id"
    t.bigint "position_id"
    t.bigint "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["position_id"], name: "index_betweens_on_position_id"
    t.index ["tree_id"], name: "index_betweens_on_tree_id"
    t.index ["type_id"], name: "index_betweens_on_type_id"
  end

  create_table "histories", force: :cascade do |t|
    t.text "body"
    t.datetime "date"
    t.bigint "tree_id"
    t.bigint "between_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["between_id"], name: "index_histories_on_between_id"
    t.index ["tree_id"], name: "index_histories_on_tree_id"
  end

  create_table "lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trees", force: :cascade do |t|
    t.boolean "planted"
    t.integer "position"
    t.bigint "type_id"
    t.bigint "line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_trees_on_line_id"
    t.index ["type_id"], name: "index_trees_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "betweens", "positions"
  add_foreign_key "betweens", "trees"
  add_foreign_key "betweens", "types"
  add_foreign_key "histories", "betweens"
  add_foreign_key "histories", "trees"
  add_foreign_key "trees", "lines"
  add_foreign_key "trees", "types"
end
