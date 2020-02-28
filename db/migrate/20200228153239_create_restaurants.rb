class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :img_url
      t.string :url
      t.string :display_phone
      t.string :category
      t.float :rating
      t.string :price

      t.timestamps
    end
  end
end
