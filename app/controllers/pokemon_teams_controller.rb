class PokemonTeamsController < ApplicationController

    def show
        @pokemon_team  = PokemonTeam.find(params[:id])
    end

    def new
        @pokemon_team = PokemonTeam.new
    end

end
