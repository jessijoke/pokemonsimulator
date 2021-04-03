class UsersController < ApplicationController
    def new
    end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        @user.save
        session[:user_id] = @user.id
        redirect_to controller: 'pages', action: 'index'
      else
        flash.now[:messages] = @user.errors.full_messages[0]
        render controller: 'users', action: 'new'
        #redirect_to controller: 'users', action: 'new'
      end


    #   return redirect_to controller: 'users', action: 'new' unless @user.save
    #   session[:user_id] = @user.id
    #   redirect_to controller: 'pages', action: 'index'
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
