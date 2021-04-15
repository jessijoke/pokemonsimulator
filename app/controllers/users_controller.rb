class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token, only: :create

    def new

    end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        @user.money = 5000
        @user.save
        session[:user_id] = @user.id
        redirect_to controller: 'pages', action: 'index'
      else
        flash.now[:messages] = @user.errors.full_messages[0]
        render controller: 'users', action: 'new'
      end
    end

    def show
         @user_display = User.find(params[:id])
         @pokemons = @user.pokemons
         @params_id = params[:id].to_i if params[:id]
    end

    def pokemons_index
        @pokemons = User.find(params[:id]).pokemons.all
        @all_types = User.find(params[:id]).pokemons.distinct.pluck(:poke_type)
        render template: 'pokemon/show'
    end


    def teams_new
        @team = Team.new
        render template: 'teams/new'
    end

    def teams_show
        
        render template: 'teams/show'
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
