class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def new
    @song = Song.find_by_id(params[:song_id])
    @purchase = Purchase.new
    session[:song] = @song
  end


  def create
    @purchase = Purchase.new(params[:purchase])
    @purchase.song_id = session[:song].id
    @purchase.price = session[:song].price
    @purchase.user_id = current_user.id
    if @purchase.save
      redirect_to songs_path
    else
      render action: "new"
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
  end
end