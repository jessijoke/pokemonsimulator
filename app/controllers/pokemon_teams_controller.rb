class PokemonTeamsController < ApplicationController

    def show
        @pokemon_team  = PokemonTeam.find(params[:id])
    end

end
