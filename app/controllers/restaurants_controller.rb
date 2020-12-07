class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @tables = Table.all
    @meals = Meal.all
    @marker = { lat: @restaurant.latitude, lng: @restaurant.longitude }
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
