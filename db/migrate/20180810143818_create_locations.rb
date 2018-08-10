class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
