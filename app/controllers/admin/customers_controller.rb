class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
  end

  private
  def customer_params
    params.require(:customer).permit(:guest, :last_name, :first_name, :email)
  end
end
