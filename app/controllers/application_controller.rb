class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  def authenticate_admin
    if !current_user.admin?
      redirect_to songs_path
    end
  end

end
