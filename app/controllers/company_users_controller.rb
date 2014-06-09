class CompanyUsersController < ApplicationController
  def new
    @all_companies = Company.all
    @company_user = CompanyUser.new
  end

  def create
    @user = current_user
    @company_user = CompanyUser.new(company_user_params)
    @company_user.user = @user
    @company_user.company_id = params[:company_id]
    @company_user.offer = params[:offer]

    if @company_user.save
      redirect_to @user
    else
      render :new
    end

  end

  def edit
    @company_user = CompanyUser.find(params[:id])
  end

  def update
    @user = User.find(session[:user_id])
    @company_user = CompanyUser.find(params[:id])
    @company_user.offer = params[:offer]
    if @company_user.update(company_user_params)
      redirect_to @user
    else
      render :new
    end
  end

  private

  def company_user_params
    params.require(:company_user).permit(:notes, :advocate_name, :advocate_email, :advocate_twitter, :last_reached_out, :last_follow_up, :next_step, :interview_notes, :offer)
  end
end
