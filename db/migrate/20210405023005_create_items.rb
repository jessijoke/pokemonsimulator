class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :sprite
      t.integer :cost
      t.integer :shop_id
      t.integer :user_item_id

      t.timestamps
    end
  end
end
