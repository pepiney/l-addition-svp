class TablesController < ApplicationController
  def index
    @skip_footer = true
    @restaurant = Restaurant.find(params[:restaurant_id])
    @tables = Table.where(restaurant: @restaurant).order(:table_number)
    @reservation = Reservation.where(table_id: :id)
  end

  def show
    @skip_footer = true
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = Table.find(params[:id])
    @reservations = Reservation.where(table_id: @table)
    @customer = Customer.where(user_id: current_user).first
    @reservation = Reservation.where(customer_id: @customer.id).last
    @orders = Order.where(table_id: @table)
    prices = []
    @orders.each { |order| prices << order.meal.price }
    @customers = []
    @reservations.each { |reservation| @customers << reservation.customer }
    @total_per_person = 0
    @split = (@table.bill / @customers.length).round(2)
  end

  def update
    @table = Table.find(params[:id])
    @customer = Customer.where(user_id: current_user).first
    @reservation = Reservation.where(customer_id: @customer.id).last
    if !@order.nil?
    Order.where(reservation_id: @reservation.id).destroy_all
    end
    if !@reservation.nil?
    @reservation.destroy
    end
    split = @table.bill - params[:split_bill].to_f
    @table.bill == 0 if split == 0
    @table.update(paid: true, booked: false, bill: split)
    redirect_to root_path, alert: "Paiement validé, merci de votre visite"
  end

end
