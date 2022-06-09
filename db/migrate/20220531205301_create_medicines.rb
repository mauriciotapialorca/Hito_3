class CreateMedicines < ActiveRecord::Migration[7.0]
  def change
    create_table :medicines do |t|
      t.integer :number_medicines
      t.string :description
      t.integer :initial_stock
      t.integer :final_stock
      t.integer :initial_price
      t.string :final_price

      t.timestamps
    end
  end
end
