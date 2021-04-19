class Post < ApplicationRecord
    belongs_to :user
    has_many :replies, dependent: :delete_all
    validates :title, presence: true
    validates :message, presence: true
    #has_many :post_replies, dependent: :destroy
    #has_many :replies, through: :post_replies
end
