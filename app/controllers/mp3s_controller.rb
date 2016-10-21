require 'pry'
class Mp3sController < ApplicationController
 
  def index
    @mp3s = Mp3.all
    @itunes = Mp3.itunes
  end

  def show
    @mp3 = Mp3.find(params[:id])
  end

  def new
    @mp3 = Mp3.new(params[:id])
  end

  def create
    @mp3 = Mp3.create(mp3_params)
    if @mp3.save
      redirect_to mp3_path(@mp3)
    end
  end

  def edit
    @mp3 = Mp3.find(params[:id])
  end

  def update
# raise params.inspect
    @mp3 = Mp3.find_by(title: params[:mp3][:title])
    @mp3.update(mp3_params) 
    if @mp3.save
      redirect_to mp3_path(@mp3.id)
    end
  end

  def destroy
  end

  private 
  def mp3_params    
    params.require(:mp3).permit(:title, :file_location, :chart_id, :youtubelink)
  end

end
