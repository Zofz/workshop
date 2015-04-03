# encoding:UTF-8
class MachinesController < ApplicationController
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
    respond_to do |format|
      if @customer.save
        format.html { redirect_to customer_path(@customer), notice: %(#{t(:customer)} #{t(:success_create)}) }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to customer_path(@customer), notice: %(#{t(:customer)} #{t(:success_updated)}) }
      else
        format.html { render action: 'edit' }
        format.js
      end
    end
  end

  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to :customers, notice: %(#{t(:customer)} #{t(:success_destroyed)}) }
      format.js
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :lastname, :cellphone, :phone, :email, :old_id, :company, :company_name, :org_nbr, :comment)
  end
end
