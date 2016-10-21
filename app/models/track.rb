class Track < ActiveRecord::Base
  has_many :track_lessons
  has_many :lessons, through: :track_lessons 
  has_many :exercises, through: :lessons
  has_many :charts, through: :lessons
  has_many :mp3s, through: :lessons
  
end
