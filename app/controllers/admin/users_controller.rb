class Admin::UsersController < ApplicationController
  skip_authorization_check
  before_filter :admin_only!
  def show
  end

  def index
    @users = User.all
  end

  private

  def admin_only!
    if !current_user.is_admin?
      redirect_to root_path, alert: 'Нет доступа'
    end
  end
end
