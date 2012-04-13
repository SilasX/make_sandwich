class AddColumnToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :content, :text
  end
end
