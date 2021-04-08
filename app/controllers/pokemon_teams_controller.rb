class PokemonTeamsController < ApplicationController

    def show
        @pokemon_team  = PokemonTeam.find(params[:id])
    end

    def new
        @pokemon_team = PokemonTeam.new
    end

    # def create
    #     @new_team = PokemonTeam.create(:team_id => params[:team_id], :pokemon_id => params[:pokemon_id])
    #     if @new_team.valid?
    #         @new_team.save
    #     else
    #         flash.now[:messages] = "Rawr"
    #     end
        
    # end

end
