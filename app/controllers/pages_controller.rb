class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def restaurant_admin
    @restaurants = current_user.restaurants
  end
end
