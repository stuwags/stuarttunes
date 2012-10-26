module ApplicationHelper

  def authenticate_admin
    if !current_user.admin?
      redirect_to songs_path
    end
  end

end
