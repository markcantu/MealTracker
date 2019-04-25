class ChangeNameForColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :title, :title1
    rename_column :items, :text, :text1
    add_column :items, :title2, :string
    add_column :items, :text2, :text
    add_column :items, :title3, :string
    add_column :items, :text3, :text
  end
end
