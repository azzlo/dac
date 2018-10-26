class RenameColumnOfVehicle < ActiveRecord::Migration[5.2]
  def change
    rename_column :vehicles, :type, :vehicle_type 
  end
end
