# encoding:UTF-8
class MachinesController < ApplicationController
  load_and_authorize_resource
  load_and_authorize_resource :customer, parent: true


  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @machine.save
      redirect_to machine_path(@machine), notice: alert_create(Machine)
    else
      render :new
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to customer_path(@customer), notice: alert_update(Machine)
    else
      render action: :edit
    end
  end

  def destroy
    @customer.destroy
    redirect_to :customers, notice: alert_destroy(Machine)
  end

  private

  def machine_params
    params.require(:machine).permit(:customer_id, :old_id,
                                    :serial_nbr, :product_id,
                                    :manufactured, :engine_nbr,
                                    :deck_nbr)
  end

  def customer_params
    params.require(:customer).permit(:firstname, :lastname, :cellphone,
                                     :phone, :email, :old_id, :comment)
  end
end
