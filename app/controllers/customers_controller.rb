# encoding:UTF-8
class CustomersController < ApplicationController
  before_action :require_user_signed_in
  before_action :set_customer, only: [:show,:update,:destroy,:edit]

  def index
    @customers = Customer.all
  end
  def show
  end
  def new
    @customer = Customer.new
  end
  def edit
  end
  def create
    @customer = Customer.new(customer_params)
    respond_to do |format|
      if @customer.save
        format.html { redirect_to customer_path(@customer), notice: %(#{t(:customer)} #{t(:success_create)}) }
        format.json { head :no_content }
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
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to :customers,notice:  %(#{t(:customer)} #{t(:success_destroyed)}) }
      format.json { head :no_content }
      format.js
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:name,:lastname,:cellphone,:phone,:email,:old_id,:company,:company_name,:org_nbr,:comment)
  end
  def set_customer
    @customer = Customer.find_by_id(params[:id])
    if(@customer == nil)
      flash[:notice] = 'Hittade ingen kund med det ID:t.'
      redirect_to action: :index
    end
  end
end