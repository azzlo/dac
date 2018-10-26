class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :type
      t.integer :year
      t.references :vehicle_category_and_payment, foreign_key: true

      t.timestamps
    end
  end
end
