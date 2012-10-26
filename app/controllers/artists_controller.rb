class ArtistsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect_to artists_path, notice: 'Artist was successfully created.'
    else
      render action: "new"
    end
  end

  def index
    @artists = Artist.all
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update_attributes(params[:artist])
      redirect_to artists_path, notice: 'Artist was successfully updated.'
    else
      render action: "edit"
    end
  end
end
