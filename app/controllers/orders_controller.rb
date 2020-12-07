class OrdersController < ApplicationController
  def index

    @orders = Order.where(reservation_id: params[:reservation_id])
    prices = []
    @orders.each { |order| prices << order.meal.price}
    @total = prices.sum
  end

  def new
    @order = Order.new

  end

  def show
    @order = Order.all
    @reservation = Reservation.find(@order.reservation_id)
  end

  def create

    @meal = Meal.find_by(meal_name: params[:order][:meal])
    @reservation = Reservation.find(params[:reservation_id])
    @table = Table.find(@reservation.table_id)
    @order = Order.new(meal_id: @meal.id, reservation_id: @reservation.id, table_id: @table.id)

    if @order.save && @meal.meal_type == "Entrée"
      redirect_to restaurant_meals_path(@table.restaurant_id, anchor: "anchor-entree")
    elsif @order.save && @meal.meal_type == "Plat Principal"
      redirect_to restaurant_meals_path(@table.restaurant_id, anchor: "anchor-plats")
    elsif @order.save && @meal.meal_type == "Dessert"
      redirect_to restaurant_meals_path(@table.restaurant_id, anchor: "anchor-dessert")
    elsif @order.save && @meal.meal_type == "Boissons"
      redirect_to restaurant_meals_path(@table.restaurant_id, anchor: "anchor-boissons")
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
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to order_path(@order)
  end

  private

  def resa_params
    params.require(:order).permit(:status, :reservation_id, :table_id)
  end

end
