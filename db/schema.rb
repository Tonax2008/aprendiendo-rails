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

ActiveRecord::Schema.define(version: 2020_09_22_184319) do

  create_table "docs", force: :cascade do |t|
    t.string "description"
    t.string "alumno"
    t.decimal "materia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "code_group"
    t.integer "code_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_subject_id"], name: "index_groups_on_code_subject_id"
  end

  create_table "hours", force: :cascade do |t|
    t.integer "code_group_id"
    t.integer "matricula_student_id"
    t.decimal "quota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_group_id"], name: "index_hours_on_code_group_id"
    t.index ["matricula_student_id"], name: "index_hours_on_matricula_student_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.decimal "matricula"
    t.string "last_string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "code_schedule"
    t.integer "code_group_id"
    t.integer "matricula_professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_group_id"], name: "index_schedules_on_code_group_id"
    t.index ["matricula_professor_id"], name: "index_schedules_on_matricula_professor_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "matricula_Student"
    t.string "name"
    t.string "last_name"
    t.decimal "promedio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "code_subject"
    t.string "name"
    t.string "degree"
    t.decimal "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "code_task"
    t.integer "code_subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_subject_id"], name: "index_tasks_on_code_subject_id"
  end

  create_table "works", force: :cascade do |t|
    t.integer "matricula_Student_id"
    t.integer "code_task_id"
    t.boolean "send_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_task_id"], name: "index_works_on_code_task_id"
    t.index ["matricula_Student_id"], name: "index_works_on_matricula_Student_id"
    
  end

end
