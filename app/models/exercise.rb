class Exercise < ActiveRecord::Base
  has_one :chart
  has_one :mp3
  
end
