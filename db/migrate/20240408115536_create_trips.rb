class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.string :driver_name
      t.string :license_plate
      t.references :road, null: false, foreign_key: true

      t.timestamps
    end
  end
end
