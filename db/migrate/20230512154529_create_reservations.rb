class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :house, null: false, foreign_key: true
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
