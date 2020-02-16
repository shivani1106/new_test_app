class TvShowsController < ApplicationController
  
  def index
    @tv_shows = TvShow.all
  end

  private
    def tv_show_params
      params.require(:tv_show).permit(:name, :timing, :tv_channel_id)
    end
end
