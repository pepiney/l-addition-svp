class AddBookedToTable < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :booked, :boolean
  end
end
