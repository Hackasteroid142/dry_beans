class CreateDeliveries < ActiveRecord::Migration[7.1]
  def change
    create_table :deliveries do |t|
      t.string :direction
      t.string :status
      t.string :code
      t.string :description
      t.string :product_name
      t.string :delivered_at
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
