ActiveRecord::Schema[7.1].define(version: 2024_01_16_114017) do
  enable_extension "plpgsql"

  create_table "daily_records", force: :cascade do |t|
    t.date "date"
    t.integer "male_count"
    t.integer "female_count"
    t.integer "male_avg_age"
    t.integer "female_avg_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hourly_records", force: :cascade do |t|
    t.integer "male_count"
    t.integer "female_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uuid"
    t.string "gender"
    t.jsonb "name"
    t.jsonb "location"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
