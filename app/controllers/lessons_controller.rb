require 'pry'

class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @mp3s = @lesson.mp3s
  end

  def new
    @lesson = Lesson.new(params[:id])
  end

  def create
    @lesson = Lesson.create(lesson_params)

    if @lesson.save
      redirect_to lessons_path(@lesson)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def lesson_params
      params.require(:lesson).permit(:title, :content, mp3_ids:[])
    end

end