class AddEdgeToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :edges, :integer
  end
end
