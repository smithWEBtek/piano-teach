class TrackLesson < ActiveRecord::Base
  belongs_to :track 
  belongs_to :lesson
end