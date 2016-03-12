class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :review
      t.integer :shop_id

      t.timestamps null: false
    end
  end
end
