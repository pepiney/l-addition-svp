class TablesController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @tables = Table.where(restaurant: @restaurant).order(:table_number)
    @reservation = Reservation.where(table_id: :id)
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.find(params[:id])
    @reservation = Reservation.where(table_id: @table).last
    @orders = Order.where(reservation_id: @reservation)
    prices = []
    @orders.each { |order| prices << order.meal.price}
    @total = prices.sum
  end

  def update
    @table = Table.find(params[:id])
    @table.update(paid: true)
    redirect_to root_path, alert: "Merci de votre visite."
  end

end
