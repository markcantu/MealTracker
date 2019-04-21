class AddNewDateToItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :new_date
    add_column :items, :new_date, :string
  end
end
