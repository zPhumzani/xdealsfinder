class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :iso
      t.string :iso3
      t.string :fips
      t.string :country
      t.string :continent
      t.string :currency_code
      t.string :currency_name
      t.string :phone_prefix
      t.string :postal_code
      t.string :language
      t.string :geonameid
      t.string :slug

      t.timestamps
    end
    add_index :countries, :slug
  end
end
