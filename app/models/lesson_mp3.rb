class LessonMp3 < ActiveRecord::Base
  belongs_to :lesson 
  belongs_to :mp3 
  
end
