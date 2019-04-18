class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :title
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
