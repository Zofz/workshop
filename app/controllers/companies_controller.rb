class CompaniesController < ApplicationController
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
    flash[:notice] = 'Company was successfully created.' if @company.save
    redirect_to @company
  end

  def update
    if @company.update(company_params)
      redirect_to @company, notice: 'Company was successfully updated.'

    else
      render :edit
    end
  end

  def destroy
    @company.destroy
    redirect_to companies_url, notice: 'Company was successfully destroyed.'
  end

  private

  def company_params
    params.require(:company).permit(:title, :org_nbr, :comment)
  end
end
