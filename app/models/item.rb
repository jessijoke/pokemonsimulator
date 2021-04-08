class Item < ApplicationRecord
    belongs_to :shop
    has_many :user_items
    has_many :users, :through => :user_items
end
