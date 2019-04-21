class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :item_name, :title
    rename_column :items, :description, :text
  end
end
