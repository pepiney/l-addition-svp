class TablesController < ApplicationController
  def index
    @tables = Table.all
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.find(params[:id])
  end

end
