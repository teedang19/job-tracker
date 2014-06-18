require 'spec_helper'

describe Company do
  
  before(:each) do
    @jellyvision = Company.create(name: "Jellyvision", website: "www.jellyvision.com")
  end

  it "should be invalid without a name" do
    @jellyvision.name = nil
    @jellyvision.should_not be_valid
  end

  it "should be invalid without a website" do
    @jellyvision.website = nil
    @jellyvision.should_not be_valid
  end
  
  it "should have company user objects" do
    @jellyvision.should respond_to(:company_users)
  end

  it "should have job seekers" do
    @jellyvision.should respond_to(:job_seekers)
  end
end