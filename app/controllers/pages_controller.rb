class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @restaurants = Restaurant.all
  end

  def restaurant_admin
    @restaurants = current_user.restaurants
  end

end
