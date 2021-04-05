class Item < ApplicationRecord
    belongs_to :shop
    belongs_to :user_items
end
