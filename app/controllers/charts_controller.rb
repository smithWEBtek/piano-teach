class ChartsController < ApplicationController


  def index
    @charts = Chart.all
  end

  def show
    @chart = Chart.find(params[:id])
  end

  def new
    @chart = Chart.new
  end

  def create
    @chart = Chart.create(chart_params)
    redirect_to charts_path(@chart)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def chart_params
    params.require(:chart).permit(:title, :mp3_id, :file_location)
  end

end
