class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.integer :table_number
      t.float :bill
      t.boolean :paid
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
