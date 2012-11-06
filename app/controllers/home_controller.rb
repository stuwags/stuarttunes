class HomeController < ApplicationController

  skip_before_filter :authenticate_user!

  def index
    @photos = []
    Album.all.each do |album|
      @photos << album.photo
    end
    Artist.all.each do |artist|
      @photos << artist.photo
    end
  end
end