require 'spec_helper'

describe User do
  
  before(:each) do
    @tam = User.create(username: "tam", password: "potatoes", password_confirmation: "potatoes")
  end

  it "should be invalid without a username" do
    @tam.username = nil
    @tam.should_not be_valid
  end
  
  it "should have potential companies" do
    @tam.should respond_to(:potential_companies)
  end

  it "should have companies" do
    @tam.should respond_to(:companies)
  end
end