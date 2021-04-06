class Pokemon < ApplicationRecord
    belongs_to :user
    has_one :team, :through => :pokemon_team
end
