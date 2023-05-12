class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :house_type
      t.string :photo
      t.string :location
      t.integer :garage
      t.integer :bedrooms
      t.integer :bathrooms
      t.decimal :area
      t.decimal :daily_price
      t.text :description

      t.timestamps
    end
  end
end