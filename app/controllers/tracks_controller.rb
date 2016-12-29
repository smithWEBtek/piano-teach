require 'pry'
class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
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
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find_by(name: params[:track][:name])
    @track.update(track_params) 
 
    if @track.save
      redirect_to track_path(@track.id)
    end
  end

  def destroy
  end

  private

  def track_params
    params.require(:track).permit(:name, :content, lesson_ids:[], lessons_attributes: [:name])
  end

end
