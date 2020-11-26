class Admin::UsersController < ApplicationController
    before_action :authorize_admin

    def index 
        @users = User.all
    end

    def make_admin
        @user = User.find_by(id: params[:id])
        @user.update(admin: true)
        redirect_to admin_users_path, notice: "#{@user.name} is now admin"
    end
end