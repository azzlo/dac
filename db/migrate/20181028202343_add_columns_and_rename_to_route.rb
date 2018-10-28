class AddColumnsAndRenameToRoute < ActiveRecord::Migration[5.2]
  def change
    rename_column :routes, :tollbooths, :tollbooths_2_to_4_edges
    add_column :routes, :tollbooths_5_to_6_edges, :decimal, precision: 10, scale: 2
  end
end
