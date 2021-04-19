class RemoveTitleFromReplies < ActiveRecord::Migration[6.1]
  def change
    remove_column :replies, :title
  end
end
