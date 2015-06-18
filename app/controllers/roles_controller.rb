# encoding: UTF-8
class RolesController < ApplicationController
  load_permissions_and_authorize_resource

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @role.save
      redirect_to role_path(@role), notice: alert_create(Role)
    else
      render :new
    end
  end

  def update
    if @role.update(role_params)
      redirect_to role_path(@role), notice: alert_update(Role)
    else
      render :edit
    end
  end

  def destroy
    @role.destroy
    redirect_to roles_path, notice: alert_destroy(Role)
  end

  private

  def role_params
    params.require(:role).permit(:title, :name, :description)
  end
end

