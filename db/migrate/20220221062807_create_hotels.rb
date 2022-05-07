class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :contact
      t.text :address
      t.text :description
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
