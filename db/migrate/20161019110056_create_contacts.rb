class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :address1, limit: 255
      t.string :address1
      t.string :city
      t.string :postal_code
      t.string :email
      t.string :business_number
      t.string :cell_number
      t.string :latitude
      t.string :longitude
      t.string :avatar
      t.references :typ_contact, foreign_key: true
      t.references :country, foreign_key: true
      t.references :region, foreign_key: true
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
