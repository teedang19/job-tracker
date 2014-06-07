class CompanyUsersController < ApplicationController
  def new
    @all_companies = Company.all
    @company_user = CompanyUser.new
  end
end
