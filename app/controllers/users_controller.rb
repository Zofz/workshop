# encoding:UTF-8
class UsersController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    if @customer.save
      redirect_to users_path, notice: alert_create(Customer)
    else
      render action: :new
    end
  end

  def update
    if current_user.update(user_params)
      redirect_to users_path, notice: alert_update(User)
    else
      redirect_to users_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :phone)
  end
end
