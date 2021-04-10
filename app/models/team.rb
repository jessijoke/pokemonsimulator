class Team < ApplicationRecord
    belongs_to :user
    has_many :pokemon_teams, dependent: :delete_all
    has_many :pokemons, through: :pokemon_teams
    accepts_nested_attributes_for :pokemons
end
