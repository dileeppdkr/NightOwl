class CreateRattings < ActiveRecord::Migration
  def change
    create_table :rattings do |t|
      t.integer :user_id
      t.integer :ratting
      t.integer :shop_id

      t.timestamps null: false
    end
  end
end
