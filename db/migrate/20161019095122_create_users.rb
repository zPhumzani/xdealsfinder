class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.references :position, foreign_key: true
      t.references :company, foreign_key: true
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
