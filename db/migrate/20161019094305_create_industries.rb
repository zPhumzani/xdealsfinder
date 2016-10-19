class CreateIndustries < ActiveRecord::Migration[5.0]
  def change
    create_table :industries do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :industries, :slug
  end
end
