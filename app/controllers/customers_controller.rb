class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :address, :date_of_birth)
  end
end
