class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.text :address
      t.integer :rating
      t.text :description
      t.float :latitude
      t.float :longitude
      t.integer :price
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
