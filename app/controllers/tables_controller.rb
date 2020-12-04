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
  end

end
