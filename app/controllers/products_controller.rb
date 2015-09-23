class ProductsController < ApplicationController
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
    if @product.save
      redirect_to product_path(@product), notice: alert_create(Product)
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product), notice: alert_update(Product)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: alert_destroy(Product)
  end

  def search
    a = params[:product][:search].split
    # @b = Brand.find_by(title: a[0])
    @b = Brand.where('title LIKE ?', %(%#{a[0]}%)).first
    # @m = MachineType.find_by(title: a[1])
    @m = MachineType.where('title LIKE ?', %(%#{a[1]}%)).first
    @products = Product.where(brand: @b, machine_type: @m)
    @new_product = Product.find_or_create_by(brand: @b, machine_type: @m)
  end

  private

  def product_params
    params.require(:product).permit(:brand_id, :brand, :machine_type_id,
                                    :machine_type, :product_nbr, :order_nbr)
  end
end
