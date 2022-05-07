class CreateRestaurantcomments < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurantcomments do |t|
      t.string :username
      t.string :body
      
      t.references :restaurant, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
