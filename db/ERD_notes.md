

Track
  AR
    has_many: :track_lessons
    has_many: :lessons, through: :track_lessons
  
    create_table "tracks", force: :cascade do |t|
      t.string   "name"
      t.text     "content"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string   "lessons"
    end

Lesson
  AR
  has_many: :lesson_exercises
  has_many: :exercises, through: :lesson_exercises

  has_many: :lesson_mp3s
  has_many: :mp3s, through: :lesson_mp3s

  has_many: :lesson_charts
  has_many: :charts, through: :lesson_charts

  has_many: :lesson_notes
  has_many: :notes, through: :lesson_notes



  lesson_exercises
  lesson_mp3s
  lesson_charts
  lesson_notes

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "exercise_id"
    t.integer  "chart_id"
    t.integer  "mp3_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end






Exercise
  exercise_mp3

Mp3

Chart

Note

Student

Instructor

