class UsersController < ApplicationController

  def index
    @user = User.find_by_id(session[:user_id])
    redirect_to @user if @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = []

      @user.errors.full_messages.each do |err|
        flash[:errors] << err
      end

      redirect_to root_url
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
