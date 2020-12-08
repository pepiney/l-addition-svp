class TablesController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @tables = Table.where(restaurant: @restaurant).order(:table_number)
    @reservation = Reservation.where(table_id: :id)
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.find(params[:id])
    @reservations = Reservation.where(table_id: @table)
    @orders = Order.where(table_id: @table)
    prices = []
    @orders.each { |order| prices << order.meal.price}
    @total = prices.sum
    @customers = []
    @reservations.each { |reservation| @customers << reservation.customer}
    @total_per_person = 0
  end

  def update
    @table = Table.find(params[:id])
    @table.update(paid: true, booked: false)
    @orders = Order.where(table_id: @table)
    @orders.destroy
    redirect_to root_path, alert: "Merci de votre visite."
  end

end
