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
       @table.booked = true
       @table.save
     redirect_to restaurant_tables_path(@reservation.table.restaurant)
    else
     redirect_to reservation_orders_path
    end
    
  end

end
