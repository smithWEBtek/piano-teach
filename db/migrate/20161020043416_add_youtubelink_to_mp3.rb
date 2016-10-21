class AddYoutubelinkToMp3 < ActiveRecord::Migration
  def change
    add_column :mp3s, :youtubelink, :string
  end
end
