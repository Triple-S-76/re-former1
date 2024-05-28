class SessionsController < ApplicationController

  def new
  end

  def create
    user = Password.find_by_name(params[:username])
    if user && user.authenticate(params[:password])
      session[:password_id] = user.id
      redirect_to logged_in_index_path, notice: 'Logged in'
    else
      flash.now.alert = 'Login failed'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to about_path, notice: 'Logged out'
  end
end