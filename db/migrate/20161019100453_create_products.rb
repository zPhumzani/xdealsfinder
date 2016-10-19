class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :company, foreign_key: true
      t.references :category, foreign_key: true
      t.references :subcategory, foreign_key: true
      t.string :name
      t.string :description
      t.decimal :weight_in_grams
      t.decimal :price
      t.integer :available_quantity
      t.datetime :expiry_date
      t.float :latitude
      t.float :longitude
      t.boolean :online_order_available
      t.float :tax_amount
      t.string :image
      t.string :slug

      t.timestamps
    end
    add_index :products, :slug
  end
end
