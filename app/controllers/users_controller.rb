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
        #redirect_to controller: 'users', action: 'new'
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
