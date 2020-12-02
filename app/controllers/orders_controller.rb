class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:resevation_id])
  end

  def create
    @order = Order.new
    @reservation = Reservation.new(resa_params)
    @order.reservation = @order
    @reservation.user = current_user
    if @reservation.save
      redirect_to order_reservation_path(@order, @reservation)
    else
      render :new
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.status = "validate"
    @order.update(resa_params)
    redirect_to orders_index_path
  end

  def destroy
  end

  private

  def resa_params
    params.require(:order.permit(:status))
  end

end
