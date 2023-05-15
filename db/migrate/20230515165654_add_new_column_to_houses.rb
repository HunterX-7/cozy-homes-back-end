class AddNewColumnToHouses < ActiveRecord::Migration[7.0]
  def change
    add_column :houses, :name, :string
  end
end
