require 'pry'
class Mp3 < ActiveRecord::Base
  belongs_to :chart
  has_many :lesson_mp3s
  has_many :lessons, through: :lesson_mp3s
  
  def self.itunes
    @files = []
    @clean_files = []
    Dir.glob(Rails.root + '/Users/BradSmith/Music/iTunes/MP3/*.mp3') do |file|
     @files << file.gsub("/Users/BradSmith/Music/iTunes/MP3/","").gsub(".mp3","")
      end
    @files
  end

end
