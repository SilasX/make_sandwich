class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :sandwich_id
      t.text :quote
      t.text :message

      t.timestamps
    end
  end
end
