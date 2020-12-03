class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:order_id])
    @reservation = Reservation.find(params[:reservation_id])
  end

  def create
    @meal = Meal.find_by(meal_name: params[:order][:meal])
    @reservation = Reservation.find(params[:reservation_id])
    @table = Table.find(@reservation.table_id)
    @order = Order.new(meal_id: @meal.id, reservation_id: @reservation.id, table_id: @table.id)

    if @order.save
      redirect_to restaurant_meals_path(@table.restaurant_id)
    else
      render
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.status = "validate"
    @order.update(resa_params)
    redirect_to orders_index_path
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to order_path(@order)
  end

  private

  def resa_params
    params.require(:order).permit(:status, :reservation_id, :table_id)
  end

end
