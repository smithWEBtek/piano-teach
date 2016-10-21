class CreateTrackLessons < ActiveRecord::Migration
  def change
    create_table :track_lessons do |t|
      t.integer :track_id
      t.integer :lesson_id

      t.timestamps null: false
    end
  end
end
