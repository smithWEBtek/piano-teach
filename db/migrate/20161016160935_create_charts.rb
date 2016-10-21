class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.string :title
      t.string :file_location
      t.integer :mp3_id

      t.timestamps null: false
    end
  end
end
