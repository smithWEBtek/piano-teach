class CreateLessonExercises < ActiveRecord::Migration
  def change
    create_table :lesson_exercises do |t|
      t.integer :lesson_id
      t.integer :exercise_id

      t.timestamps null: false
    end
  end
end
