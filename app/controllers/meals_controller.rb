class MealsController < ApplicationController
  def index
    @meals = Meal.all
    @restaurant = Restaurant.find(params[:restaurant_id])
    @starters = @meals.select { |meal| meal.meal_type == "Entrée" }
    @mains = @meals.select { |meal| meal.meal_type == "Plat Principal" }
    @desserts = @meals.select { |meal| meal.meal_type == "Dessert" }
    @beverages = @meals.select { |meal| meal.meal_type == "Boissons" }
  end

  def show
    @meal = Meal.find(params[:restaurant_id])
  end
  
  
end
