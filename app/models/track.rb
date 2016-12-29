require 'pry'
class Track < ActiveRecord::Base
  has_many :track_lessons
  has_many :lessons, through: :track_lessons 
  accepts_nested_attributes_for :lessons
 

  def lessons_attributes=(lesson_attributes)
# binding.pry
    lesson_attributes.values.each do |lesson_attribute|
      lesson = Lesson.find_or_create_by(lesson_attribute)
# binding.pry
      self.lessons<< lesson
 binding.pry
    end
  end

end
