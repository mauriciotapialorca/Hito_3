class CreateLaboratoryRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratory_registers do |t|
      t.integer :number_laboratory
      t.string :description

      t.timestamps
    end
  end
end
