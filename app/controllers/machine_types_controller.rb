class MachineTypesController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @machine_type.save
      redirect_to machine_type_path(@machine_type),
        notice: alert_create(MachineType)
    else
      render :new
    end
  end

  def update
    if @machine_type.update(machine_type_params)
      redirect_to machine_type_path(@machine_type),
        notice: alert_update(MachineType)
    else
      render :edit
    end
  end

  def destroy
    @machine_type.destroy
    redirect_to machine_types_url, notice: alert_destroy(MachineType)
  end

  private

  def machine_type_params
    params.require(:machine_type).permit(:title, :short, :comment)
  end
end
