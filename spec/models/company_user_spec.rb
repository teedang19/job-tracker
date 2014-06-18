require 'spec_helper'

describe CompanyUser do
  
  before(:each) do
    tam = User.create(username: "tam", password: "potatoes", password_confirmation: "potatoes")
    jellyvision = Company.create(name: "Jellyvision", website: "www.jellyvision.com")
    @tams_dream_job = CompanyUser.create(user: tam, company: jellyvision)
  end

  it "should be invalid without a user" do
    @tams_dream_job.user = nil
    @tams_dream_job.should_not be_valid
  end
  
  it "should be invalid without a company" do
    @tams_dream_job.company = nil
    @tams_dream_job.should_not be_valid
  end

end