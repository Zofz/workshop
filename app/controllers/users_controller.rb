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
      redirect_to customer_path(@customer), notice: %(#{t(:customer)} #{t(:success_create)})
    else
      render action: 'new'
    end
  end

  def update
    flash[:notice] = %(#{t(:customer)} #{t(:success_updated)}) if current_user.update(user_params)
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :phone)
  end
end
