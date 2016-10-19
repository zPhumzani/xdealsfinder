class CreateFees < ActiveRecord::Migration[5.0]
  def change
    create_table :fees do |t|
      t.string :name
      t.string :fee_percentage

      t.timestamps
    end
  end
end
