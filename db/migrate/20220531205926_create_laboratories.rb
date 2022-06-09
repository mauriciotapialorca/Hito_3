class CreateLaboratories < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratories do |t|
      t.integer :number_laboratory
      t.string :address
      t.string :pharmacy_of_brand
      t.string :district
      t.integer :number_region
      t.string :hour_open
      t.string :hour_close
      t.integer :phone
      t.string :number_medicine_isbn

      t.timestamps
    end
  end
end
