class CreateSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.string :slug

      t.timestamps
    end
    add_index :subcategories, :slug
  end
end
