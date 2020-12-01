class TablesController < ApplicationController
  def index
    @tables = Table.all
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
