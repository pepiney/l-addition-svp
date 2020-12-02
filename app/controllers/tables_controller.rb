class TablesController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @tables = Table.where(restaurant: @restaurant).order(:table_number)
  
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.find(params[:id])
  end

end
