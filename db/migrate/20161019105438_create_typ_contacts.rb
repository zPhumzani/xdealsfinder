class CreateTypContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :typ_contacts do |t|
      t.string :name, limit: 255

      t.timestamps
    end
  end
end
