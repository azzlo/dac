class AddLicensePlateToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :license_plate, :string
  end
end
