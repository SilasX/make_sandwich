class RemoveColumnFromOrder < ActiveRecord::Migration
  def up
    remove_column :orders, :quote
      end

  def down
    add_column :orders, :quote, :string
  end
end
