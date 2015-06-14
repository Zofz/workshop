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
    if @company.save
      redirect_to company_path(@company), notice: alert_create(Company)
    else
      render :new
    end
  end

  def update
    if @company.update(company_params)
      redirect_to company_path(@company), notice: alert_update(Company)
    else
      render :edit
    end
  end

  def destroy
    @company.destroy
    redirect_to companies_url, notice: alert_destroy(Company)
  end

  private

  def company_params
    params.require(:company).permit(:title, :org_nbr, :comment)
  end
end
