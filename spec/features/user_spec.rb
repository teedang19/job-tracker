require 'spec_helper'

feature 'returning users' do

  before :each do
    User.create(username: "user1", password: "password")
  end

  it 'can login with a name and password' do
    visit root_path
    fill_in 'session_username', with: 'user1'
    fill_in 'session_password', with: 'password'
    click_button 'Save Session'
    
    page.should have_content "welcome back to jobTracker, user1 !"
  end

end

feature 'logged in users' do

  before :each do
    @test_user = User.create(username: "user1", password: "password")

    visit root_path
    fill_in 'session_username', with: 'user1'
    fill_in 'session_password', with: 'password'
    click_button 'Save Session'
  end


  it 'can logout' do
    visit user_path(@test_user)
    click_link 'Logout'

    current_path.should == "/"
  end

  it 'can see a list of their potential jobs' do
    jellyvision = Company.create(name: "Jellyvision", website: "www.jellyvision.com")
    cu = CompanyUser.create(user: @test_user, company: jellyvision, last_reached_out: Time.now, last_follow_up: Time.now)
    visit user_path(@test_user)

    expect(page).to have_content("Jellyvision")
  end

end