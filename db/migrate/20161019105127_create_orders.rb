class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :company, foreign_key: true
      t.integer :bill_to_contact_id
      t.integer :ship_to_contact_id
      t.integer :order_fee_id
      t.decimal :total_amount
      t.datetime :purchased_at
      t.string :transport_method

      t.timestamps
    end
  end
end
