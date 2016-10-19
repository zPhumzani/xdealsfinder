class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :name, limit: 255
      t.string :timezone
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
