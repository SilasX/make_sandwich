class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :lettuce, :boolean
    add_column :orders, :mayo, :boolean
    add_column :orders, :mustard, :boolean
  end
end
