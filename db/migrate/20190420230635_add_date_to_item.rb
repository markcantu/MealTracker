class AddDateToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :new_date, :string
  end
end
