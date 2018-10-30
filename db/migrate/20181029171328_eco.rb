class Eco < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :payment_per_return_km, :integer
  end
end
