class UsersController < ApplicationController
  before_filter :check_admin_status, only: [:revoke_access, :grant_access]

  def index
    @users = User.all
  end

  def show
  end

  def revoke_access
    user = User.find(params[:id])
    user.revoke!
    redirect_to users_path
  end

  def grant_access
    user = User.find(params[:id])
    user.grant!
    redirect_to users_path
  end

  private
  def check_admin_status
    current_user.admin?
  end

  def user_params
    params.require(:user).permit(:firstname, :lastname, :role)
  end
end
