class Team < ApplicationRecord
    belongs_to :user
    has_many :pokemon_teams
    has_many :pokemons, through: :pokemon_teams
    #accept_nested_attributes_for :pokemon_teams, :allow_destroy => true
end
