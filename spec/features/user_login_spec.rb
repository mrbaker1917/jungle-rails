require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do
  before(:each) do
    @a_user = User.create!(first_name: "Mark", last_name: "Baker", email: 'mrbaker1917@gmail.com', password: "1234abcd", password_confirmation: "1234abcd")
  end

  scenario "user can log in with correct email and password" do
    # visit home page
    visit root_path
    # click on login
    click_on "Login"
    expect(page).to have_content('Email')
    fill_in 'email', with: @a_user.email
    fill_in 'password', with: @a_user.password
    click_button 'Submit'
    expect(page).to have_content('Logout')
  end
end
