class CreateLessonMp3s < ActiveRecord::Migration
  def change
    create_table :lesson_mp3s do |t|
      t.integer :lesson_id
      t.integer :mp3_id

      t.timestamps null: false
    end
  end
end
