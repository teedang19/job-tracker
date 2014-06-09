class CompanyUsersController < ApplicationController
  def new
    @all_companies = Company.all
    @company_user = CompanyUser.new
  end

  def create
    @company_user = CompanyUser.new(company_user_params)
    @company_user.user = current_user
    @company_user.company_id = params[:company_id]
    @company_user.offer = params[:offer]

    if @company_user.save
      redirect_to current_user
    else
      render :new
    end

  end

  def edit
    @company_user = CompanyUser.find(params[:id])
  end

  def update
    @company_user = CompanyUser.find(params[:id])
    @company_user.offer = params[:offer]
    if @company_user.update(company_user_params)
      redirect_to current_user
    else
      render :new
    end
  end

  def destroy
    @company_user = CompanyUser.find(params[:id])
    @company_user.destroy
    flash[:messages] = ["Your potential job at #{@company_user.company.name} has been deleted."]
    redirect_to current_user
  end

  private

  def company_user_params
    params.require(:company_user).permit(:notes, :advocate_name, :advocate_email, :advocate_twitter, :last_reached_out, :last_follow_up, :next_step, :interview_notes, :offer)
  end
end
