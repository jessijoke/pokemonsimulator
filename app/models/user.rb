class User < ApplicationRecord
    has_secure_password
    validates :password, confirmation: true
    validates :name, presence: true, :uniqueness => {:scope => :name}
    validates :email, presence: true, :uniqueness => {:scope => :email}
end
