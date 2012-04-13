class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :tomato, :boolean
  end
end
