class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def show
        @team = Team.find(params[:id])
    end

    def new
        @team = Team.new
    end

    def create
        @user = current_user
        @team = Team.create(:nickname => params[:nickname], :user_id => current_user.id)
        #check current_user.team.include?(team)
        if @team.valid?
            @team.save
            redirect_to team_path(@team)
        else
            render :new
        end
    end

    def edit
        @team = Team.find(params[:id])
    end

    def update
        @team = Team.find(params[:id])
        @team.update(nickname: params[:team][:nickname])
        redirect_to team_path(@team)
    end

    private

    def team_params
        params.require(:pokemon).permit(*args)
    end
end
