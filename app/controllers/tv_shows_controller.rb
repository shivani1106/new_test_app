class TvShowsController < ApplicationController
  before_action :set_tv_channel, only: [:channel_shows]

  def index
    @tv_shows = TvShow.all
  end

  def channel_shows
    @tv_channel_shows = @tv_channel.tv_Shows
  end  

  private
    def set_tv_channel
      @tv_channel = TvChannel.find(params[:tv_channel_id])
    end  

    # Only allow a list of trusted parameters through.
    def tv_show_params
      params.require(:tv_show).permit(:name, :timing, :tv_channel_id)
    end
end
