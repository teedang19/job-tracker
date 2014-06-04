class SessionsController < ApplicationController
  
  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = ["Incorrect username and password combination."]

      redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end