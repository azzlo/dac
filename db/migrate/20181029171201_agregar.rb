class Agregar < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :economic, :integer
  end
end
