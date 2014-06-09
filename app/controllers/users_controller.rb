class UsersController < ApplicationController

  skip_before_filter :require_login, only: [:index, :create]

  def index
    redirect_to current_user if current_user
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

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
