class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :tables, :bill, :float, default: 0
  end
end
