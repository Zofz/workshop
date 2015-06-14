class MachineModelsController < ApplicationController
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
    if @machine_model.save
      redirect_to machine_model_path(@machine_model), notice: alert_create(MachineModel)
    else
      render :new
    end
  end

  def update
    if @machine_model.update(machine_model_params)
      redirect_to machine_model_path(@machine_model), notice: alert_update(MachineModel)
    else
      render :edit
    end
  end

  def destroy
    @machine_model.destroy
    redirect_to machine_models_url, notice: alert_destroy(MachineModel)
  end

  private

  def machine_model_params
    params.require(:machine_model).permit(:brand_id,:machine_type_id,:brand,:machine_type)
  end
end
