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
    flash[:notice] = %(#{model_name(Machine)} #{t(:success_create)}) if @machine.save
    redirect_to @machine
  end

  def update
    if @customer.update(customer_params)
      redirect_to customer_path(@customer), notice: %(#{model_name(Customer)} #{t(:success_updated)})
    else
      render action: 'edit'
    end
  end

  def destroy
    @customer.destroy
    redirect_to :customers, notice: %(#{t(:customer)} #{t(:success_destroyed)})
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :lastname, :cellphone, :phone, :email, :old_id, :company, :company_name, :org_nbr, :comment)
  end
end
