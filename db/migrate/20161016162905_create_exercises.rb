class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :content
      t.integer :mp3_id
      t.integer :chart_id

      t.timestamps null: false
    end
  end
end
