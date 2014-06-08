class SessionsController < ApplicationController

  skip_before_filter :require_login, only: [:index, :create]

  def create
    @user = User.find_by_username(params[:session][:username]).try(:authenticate, params[:session][:password])
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
