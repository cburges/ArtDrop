# require 'spec_helper'
# require 'rails_helper'
# feature 'sign out' do
#   # As an authenticated user
#   # I want to sign out
#   # So that I can leave my user session
#
#   #ACCEPTANCE CRITERIA
#   # * If I am signed in as an authenticated user
#   #   I am able to sign out to prevent others from using it.
#
#   scenario 'an authenticated user signs out' do
#     user = FactoryGirl.create(:user)
#     visit root_path
#     click_link 'Sign In'
#     fill_in 'Email', with: user.email
#     fill_in 'user_password', with: user.password
#     click_button 'Sign In'
#
#     expect(page).to have_content("Sign Out")
#
#     click_link 'Sign Out'
#
#     expect(page).to have_content("Sign In")
#     expect(page).to have_content("Sign Up")
#   end
# end
