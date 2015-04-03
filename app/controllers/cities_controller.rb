class CitiesController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def new
  end

  def show
  end

  def create
    flash[:notice] = 'Company was successfully created.' if @city.save
    redirect_to @city
  end

  def update
    if @city.update(company_params)
      redirect_to @city, notice: 'Company was successfully updated.'

    else
      render :edit
    end
  end

  def destroy
    @city.destroy
    redirect_to City, notice: 'Company was successfully destroyed.'
  end

  private

  def city_params
    params.require(:city).permit(:title, :postal_title, :postal_code)
  end
end
