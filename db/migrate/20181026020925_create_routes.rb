class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :origin, null: false
      t.string :destination, null: false
      t.integer :distance
      t.decimal :tollbooths, precision: 10, scale: 2
      t.integer :days

      t.timestamps
    end
  end
end
