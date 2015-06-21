class BrandsController < ApplicationController
  load_permissions_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @brand.save
      redirect_to brand_path(@brand), notice: alert_create(Brand)
    else
      render :new
    end
  end

  def update
    if @brand.update(brand_params)
      redirect_to brand_path(@brand), notice: alert_update(Brand)
    else
      render :edit
    end
  end

  def destroy
    @brand.destroy
    redirect_to brands_url, notice: alert_destroy(Brand)
  end

  private

  def brand_params
    params.require(:brand).permit(:title, :short, :url, :reseller_url)
  end
end
