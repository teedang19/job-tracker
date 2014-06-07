class CompanyUsersController < ApplicationController
  def new
    @all_companies = Company.all
  end
end
