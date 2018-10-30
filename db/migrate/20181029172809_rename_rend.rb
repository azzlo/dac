class RenameRend < ActiveRecord::Migration[5.2]
  def change
    rename_column :vehicles, :payment_per_return_km, :performance_km_fuel
  end
end
