class CreateMp3s < ActiveRecord::Migration
  def change
    create_table :mp3s do |t|
      t.string :title
      t.string :file_location
      t.integer :chart_id

      t.timestamps null: false
    end
  end
end
