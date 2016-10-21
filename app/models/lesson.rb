class Lesson < ActiveRecord::Base
  has_many :track_lessons
  has_many :tracks, through: :track_lessons 

  has_many :charts
  has_many :lesson_mp3s
  has_many :mp3s, through: :lesson_mp3s
  has_many :exercises, through: :lesson_exercises
  
end
