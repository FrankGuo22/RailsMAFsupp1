class CreateMyproducts < ActiveRecord::Migration
  def change
    create_table :myproducts do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price
      t.string :bottle_size
      t.string :company
      t.string :country
      t.string :grape_type
      t.string :suit_vegetarian

      t.timestamps null: false
    end
  end
end
