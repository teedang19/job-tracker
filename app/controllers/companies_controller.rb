class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to new_company_user_path
    else
      flash[:errors] = []
      @company.errors.full_messages.each {|msg| flash[:errors] << msg}
      render :new
    end
  end

  def show
    @company = Company.find(params[:id]) 
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :website, :hiring, :cto_name, :cto_email, :cto_twitter, :cto_blog_url)
  end
end
