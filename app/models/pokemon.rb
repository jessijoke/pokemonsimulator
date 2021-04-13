class Pokemon < ApplicationRecord
    belongs_to :user
    has_many :pokemon_teams
    has_many :teams, through: :pokemon_teams

    scope :get_pokemon_by_type, ->(type) {where("poke_type = ?", type)}
    
end
