class AddDateAsNewField < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :date, :date
  end
end
