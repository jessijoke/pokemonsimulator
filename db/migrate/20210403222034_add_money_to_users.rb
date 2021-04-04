class AddMoneyToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :money, :integer
    remove_column :users, :password
    add_column :users, :level, :integer
    add_column :users, :experience, :integer
    add_column :users, :admin, :integer
  end
end
