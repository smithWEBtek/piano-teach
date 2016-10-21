class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :content
      t.integer :exercise_id
      t.integer :chart_id
      t.integer :mp3_id

      t.timestamps null: false
    end
  end
end
