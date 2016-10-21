class AddLessonsToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :lessons, :string
  end
end
