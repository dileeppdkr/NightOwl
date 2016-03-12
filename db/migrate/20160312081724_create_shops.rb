class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :category_id
      t.integer :user_id
      t.string :country_id
      t.string :state
      t.string :city
      t.string :area
      t.string :landmark
      t.string :time_from
      t.integer :pincode
      t.string :time_to
      t.text :days,array: true, default: []
      t.integer :status

      t.timestamps null: false
    end
  end
end
