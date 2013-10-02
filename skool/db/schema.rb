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

ActiveRecord::Schema.define(version: 20131001185727) do

  create_table "course_enrollments", force: true do |t|
    t.integer "course_id",   null: false
    t.integer "student_id",  null: false
    t.string  "final_grade"
  end

  add_index "course_enrollments", ["course_id", "student_id"], name: "index_course_enrollments_on_unique", unique: true

  create_table "courses", force: true do |t|
    t.string  "course_code", null: false
    t.string  "term",        null: false
    t.integer "teacher_id",  null: false
    t.string  "name",        null: false
    t.text    "description"
  end

  add_index "courses", ["course_code", "term", "teacher_id"], name: "index_courses_on_unique", unique: true

  create_table "students", force: true do |t|
    t.string "sid",        null: false
    t.string "first_name", null: false
    t.string "last_name",  null: false
    t.date   "birthdate",  null: false
  end

  add_index "students", ["sid"], name: "index_students_on_sid", unique: true

  create_table "teachers", force: true do |t|
    t.string "tid",        null: false
    t.string "first_name", null: false
    t.string "last_name",  null: false
  end

  add_index "teachers", ["tid"], name: "index_teachers_on_tid", unique: true

end
