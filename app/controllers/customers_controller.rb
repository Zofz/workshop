# encoding:UTF-8
class CustomersController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
    @customer.addresses.build
  end

  def edit
  end

  def create
    if @customer.save
      redirect_to edit_customer_path(@customer), success: alert_create(Customer)
    else
      render action: :new
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to edit_customer_path(@customer), success: alert_update(Customer)
    else
      render action: :edit
    end
  end

  def destroy
    @customer.destroy
    redirect_to :customers, notice: alert_destroy(Customer)
  end

  private

  def customer_params
    params.require(:customer).permit(:firstname, :lastname, :cellphone,
                                     :phone, :email, :old_id, :company_id, :comment,
                                     { addresses_attributes: [:id, :_destroy, :city_id, :street, :comment] })
  end
end
