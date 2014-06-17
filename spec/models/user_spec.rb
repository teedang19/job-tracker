require 'spec_helper'

describe User do
  let (:tam) { User.new(username: "tamatojuice") }

  it "should be invalid without a username" do
    tam.should_not be_valid
  end
  
end