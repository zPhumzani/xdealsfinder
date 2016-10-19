class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name, limit: 255
      t.string :avatar, limit: 255
      t.text :description
      t.string :verification_doc
      t.boolean :verified
      t.references :fee, foreign_key: true
      t.references :industry, foreign_key: true
      t.string :slug

      t.timestamps
    end
    add_index :companies, :slug
  end
end
