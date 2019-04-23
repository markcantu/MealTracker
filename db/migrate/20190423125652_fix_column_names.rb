class FixColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :title, :food
    rename_column :items, :text, :description
  end
end
