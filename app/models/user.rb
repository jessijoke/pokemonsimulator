class User < ApplicationRecord
    has_secure_password
    has_many :pokemons
    has_many :pokemon_teams
    has_many :teams, :through => :pokemon_teams
    has_many :user_items
    has_many :items, :through => :user_items
    has_many :friendships, dependent: :destroy
    has_many :friends, through: :friendships
    has_many :posts
    has_many :replies
    validates :password, confirmation: true
    validates :name, presence: true
    validates :email, presence: true, :uniqueness => {:scope => :email}

    def self.from_omniauth(auth)
        self.find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |u|
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(20)
            u.name = auth['info']['name'].downcase.gsub(" ", "_")
            u.money = 5000
          end
    end
end
