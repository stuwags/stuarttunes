class HomeController < ApplicationController
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