class CreateCompaniesContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :companies_contacts do |t|
      t.references :company, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
