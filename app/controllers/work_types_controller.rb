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
    flash[:notice] = 'WorkType was successfully created.' if @work_type.save
    redirect_to @work_type
  end

  def update
    if @work_type.update(company_params)
      redirect_to @work_type, notice: 'WorkType was successfully updated.'

    else
      render :edit
    end
  end

  def destroy
    @work_type.destroy
    redirect_to WorkType, notice: 'WorkType was successfully destroyed.'
  end

  private

  def work_type_params
    params.require(:work_type).permit(:title, :comment)
  end
end
