class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :omniauth

  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to controller: 'pages', action: 'index'
    else
      flash.now[:messages] = "Username or password is incorrect."
      render controller: 'sessions', action: 'new'
    end
  end
  
  def omniauth
    @user = User.from_omniauth(auth)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to controller: 'pages', action: 'index'
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
