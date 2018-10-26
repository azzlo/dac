class CreateVehicleCategoryAndPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_category_and_payments do |t|
      t.string :category, null: false
      t.decimal :payment_per_km, precision: 10, scale: 2, default: 0
      t.decimal :payment_per_return_km, precision: 10, scale: 2, default: 0

      t.timestamps
    end
  end
end
