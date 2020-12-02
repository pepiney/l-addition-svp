class MealsController < ApplicationController

  def index
    @customer = Customer.where(user_id: current_user).first
    @reservation = Reservation.where(customer_id: @customer).last
    @order = Order.new
    @meals = Meal.all
    @restaurant = Restaurant.find(params[:restaurant_id])
    @starters = @meals.select { |meal| meal.meal_type == "Entrée" }
    @mains = @meals.select { |meal| meal.meal_type == "Plat Principal" }
    @desserts = @meals.select { |meal| meal.meal_type == "Dessert" }
    @beverages = @meals.select { |meal| meal.meal_type == "Boissons" }
  end

  def update
    @availability = !availability
    @meal = Meal.find(params[:id])
    @meal.update(customer_params)
  end

  def show
    @meal = Meal.find(params[:restaurant_id])
  end



  private

  def meals_params
    params.require(:meal).permit(:availability)
  end
end
