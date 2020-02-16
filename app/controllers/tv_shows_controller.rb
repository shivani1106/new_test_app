class TvShowsController < ApplicationController
  
  def index
    if params[:search]
      @tv_shows = TvShow.where("name LIKE ?", "%#{params[:search]}%")&.order("created_at DESC")
    else
      @tv_shows = TvShow.all.order('created_at DESC')
    end
  end

  private
    def tv_show_params
      params.require(:tv_show).permit(:name, :timing, :tv_channel_id)
    end
end
