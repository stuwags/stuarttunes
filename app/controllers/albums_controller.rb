class AlbumsController < ApplicationController
  # before_filter :authenticate_user!

  if current_user.admin?
    # do something
  end

  if current_user.try(:admin?)
    # do something
  end

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to albums_path, notice: 'Album was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      redirect_to albums_path, notice: 'Album was successfully updated.'
    else
      render action: "edit"
    end
  end
end
