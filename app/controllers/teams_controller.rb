class TeamsController < ApplicationController
    before_action :require_logged_in

    def index
        if !params[:user_id]
            @teams = Team.where(:user_id => current_user.id)
        else
            @user = current_user
            @teams = Team.where(:user_id => User.find(params[:user_id]))
        end
    end

    def show
        @team = Team.find(params[:id])
    end

    def new
        #fix this logic later -- If you aren't the current user you shouldn't be able to view this form.
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
        @team = Team.find(params[:id])
        redirect_if_not_team_owner

        if @team.update(nickname: params[:team][:nickname])

            #gets values from checkboxes and stores them in an array ignoring unselected pokemon
            pokemons_ids_to_keep = params[:team][:pokemons] - [""]
            #replaces the original team with only the selected team members
            @team.pokemon_ids = pokemons_ids_to_keep

            #to ensure the team length does not go over 6
            current_team_size = pokemons_ids_to_keep.length
            ivar = 0

            while ivar + current_team_size < 6 do
                poke_id = params[:team][:pokemon_teams].values[ivar]
                if !poke_id.blank? && pokemon = Pokemon.find_by_id(poke_id)
                    @team.pokemons << pokemon
                end
                ivar += 1
            end
            redirect_to team_path(@team)
        else
            render :new
        end
    end

    def destroy
        @team = Team.find(params[:id])
        if @team.user_id == current_user.id
            @team.destroy
            redirect_to teams_path
        end
    end

    private

    def redirect_if_not_team_owner
        @user = current_user
        if @team.user_id != current_user.id
            redirect to update_teams_path
        end
    end

    def team_params
        params.require(:pokemon).permit(*args)
    end
end
