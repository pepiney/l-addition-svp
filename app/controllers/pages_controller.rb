class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :redirect_to_profil, only: [ :restaurant_admin ]

  def home
    @restaurants = Restaurant.all
  end

  def restaurant_admin
    @restaurants = current_user.restaurants
  end

  def profil
    if current_user.customer
      @customer = current_user.customer
    else
      @customer = Customer.create(user: current_user)
    end
  end

  private

  def redirect_to_profil
    if current_user.customer == nil
      redirect_to "/profil"
    end
  end

end
