class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :positions, :slug
  end
end
