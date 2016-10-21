class TracksController < ApplicationController


  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
    @track_lessons = []
    @track.track_lessons.each do |tl|
      @track_lessons << Lesson.find_by(track_id: tl.lesson_id)
    end
  end

  def new
    @track = Track.new(params[:id])
  end

  def create
    @track = Track.create(track_params)
    if @track.save
      redirect_to track_path(@track)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def track_params
    params.require(:track).permit(:name, :content, lessons:[])
  end

end
