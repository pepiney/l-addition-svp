class ReservationsController < ApplicationController


  def new
    @reservation = Reservation.new
  end

  def create
    @table = Table.find(params[:table_id])
    @reservation = Reservation.new
    @customer = Customer.where(user_id: current_user).first
    @reservation.customer = @customer
    @reservation.table = @table

    if @reservation.save
       @table.booked = !@table.booked
       @table.save
     redirect_to restaurant_meals_path(@reservation.table.restaurant)
    else
     redirect_to reservation_orders_path
    end

  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.table.update(booked: false)
    @reservation.destroy
  end

end
