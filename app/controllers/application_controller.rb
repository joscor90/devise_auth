class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize_admin
    redirect_to root_path, notice: "You cannot view this page" unless current_user.admin == true
  end


  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_users_path
    else
      super
    end
  end
end
