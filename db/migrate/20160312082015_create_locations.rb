class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :lng
      t.float :lon
      t.string :place
      t.integer :pin
      t.integer :status

      t.timestamps null: false
    end
  end
end
