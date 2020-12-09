class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @skip_footer = true
    @customer = Customer.where(user_id: current_user).first
    @reservation = Reservation.where(customer_id: @customer).last
    @order = Order.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @meals = @restaurant.meals
    @orders = Order.where(reservation_id: @reservation)
    @starters_select = @meals.select { |meal| meal.meal_type == "Entrée" }
    @starters = []
    @starters_select.each do |meal|
      @starters << meal.meal_name
    end
    @mains_select = @meals.select { |meal| meal.meal_type == "Plat Principal" }
    @mains = []
    @mains_select.each do |meal|
      @mains << meal.meal_name
    end
    @desserts_select = @meals.select { |meal| meal.meal_type == "Dessert" }
    @desserts = []
    @desserts_select.each do |meal|
      @desserts << meal.meal_name
    end
    @beverages_select = @meals.select { |meal| meal.meal_type == "Boissons" }
    @beverages = []
    @beverages_select.each do |meal|
      @beverages << meal.meal_name
    end

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
