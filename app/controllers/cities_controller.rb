class CitiesController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def new
  end

  def show
  end

  def create
    if @city.save
      redirect_to city_path(@city)
    else
      render :new, notice: alert_create(City)
    end
  end

  def update
    if @city.update(company_params)
      redirect_to city_path(@city), notice: alert_update(City)
    else
      render :edit
    end
  end

  def destroy
    @city.destroy
    redirect_to City, notice: alert_destroy(City)
  end

  private

  def city_params
    params.require(:city).permit(:title, :postal_title, :postal_code)
  end
end
