class ProductsController < ApplicationController
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
    flash[:notice] = 'Product was successfully created.' if @product.save
    redirect_to @product
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to Product, notice: 'Product was successfully destroyed.'
  end

  private

  def product_params
    params.require(:product).permit(:machine_model, :product_nbr, :order_nbr)
  end
end
