class CreateRoads < ActiveRecord::Migration[7.1]
  def change
    create_table :roads do |t|
      t.string :company_name
      t.string :code

      t.timestamps
    end
  end
end
