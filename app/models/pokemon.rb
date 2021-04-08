class Pokemon < ApplicationRecord
    belongs_to :user
    has_many :teams, through: :pokemon_teams
end
