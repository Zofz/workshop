class WorkTypesController < ApplicationController
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
    if @work_type.save
      redirect_to work_type_path(@work_path), notice: alert_create(WorkType)
    else
      render :new
    end
  end

  def update
    if @work_type.update(company_params)
      redirect_to work_type_path(@work_type), notice: alert_update(WorkType)
    else
      render :edit
    end
  end

  def destroy
    @work_type.destroy
    redirect_to WorkType, notice: alert_destroy(WorkType)
  end

  private

  def work_type_params
    params.require(:work_type).permit(:title, :comment)
  end
end
