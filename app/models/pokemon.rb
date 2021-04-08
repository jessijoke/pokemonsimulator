class Pokemon < ApplicationRecord
    belongs_to :user
    has_many :pokemon_teams
    has_many :teams, through: :pokemon_teams
end
