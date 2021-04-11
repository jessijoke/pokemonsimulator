class TeamsController < ApplicationController
    before_action :require_logged_in

    def index
        @teams = Team.where(:user_id => current_user.id)
    end

    def show
        @team = Team.find(params[:id])
    end

    def new
        @team = Team.new
    end

    def create
        @user = current_user
        @team = Team.new(:nickname => params[:nickname], :user_id => current_user.id)
        
        if @team.save
            i = 1
            while i < 7 do
                break if !Pokemon.find_by_id(params[:pokemon_teams]["poke#{i}"])
                pokemon = Pokemon.find(params[:pokemon_teams]["poke#{i}"])
                @team.pokemons << pokemon if pokemon
                i += 1
             end
            redirect_to team_path(@team)
        else
            render :new
        end
    end

    def edit
        @team = Team.find(params[:id])
        if @team.user.id != current_user.id
            redirect_to teams_path
        end
    end

    def update
        
    end

    def destroy
        @team = Team.find(params[:id])
        if @team.user_id == current_user.id
            @team.destroy
            redirect_to teams_path
        end
    end

    private

    def team_params
        params.require(:pokemon).permit(*args)
    end
end
