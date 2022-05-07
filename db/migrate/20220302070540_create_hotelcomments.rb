class CreateHotelcomments < ActiveRecord::Migration[7.0]
  def change
    create_table :hotelcomments do |t|
      t.string :username
      t.string :body
      t.references :hotel, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
