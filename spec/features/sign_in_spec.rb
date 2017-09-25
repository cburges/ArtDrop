# require 'spec_helper'
# require 'rails_helper'
# feature 'sign in' do
#   # As an authenticated user
#   # I want to sign in
#   # So that I can view my ArtDrop profile
#
#   #ACCEPTANCE CRITERIA
#   # * If I specify a valid, previously registered email and password,
#   #   I am authenticated and I gain access to the system
#   # * If I specify an invalid email and password, I remain unauthenticated
#   # * If I am already signed in, I can't sign in again
#
#   scenario 'an existing user specifies a valid email and password' do
#     user = FactoryGirl.create(:user)
#     visit root_path
#     click_link 'Sign In'
#     fill_in 'Email', with: user.email
#     fill_in 'user_password', with: user.password
#     click_button 'Sign In'
#
#     expect(page).to have_content("Welcome Back!")
#     expect(page).to have_content("Sign Out")
#   end
#   scenario 'a non existent email and password is supplied' do
#     visit root_path
#     click_link 'Sign In'
#     fill_in 'Email', with: 'test@gmail.com'
#     fill_in 'user_password', with: '123456'
#     click_button 'Sign In'
#
#     expect(page).to have_content("Invalid Email or password.")
#     expect(page).to_not have_content("Welcome Back!")
#     expect(page).to_not have_content("Sign Out")
#   end
#   scenario 'a existing email with the wrong password is denied access' do
#     user = FactoryGirl.create(:user)
#     visit root_path
#     click_link 'Sign In'
#     fill_in 'Email', with: user.email
#     fill_in 'user_password', with: 'wrongpassword'
#     click_button 'Sign In'
#
#     expect(page).to have_content("Invalid Email or password")
#     expect(page).to_not have_content("Welcome Back!")
#     expect(page).to_not have_content("Sign Out")
#   end
#   scenario 'an already authenticated user cannot re-sign in' do
#     user = FactoryGirl.create(:user)
#     visit new_user_session_path
#     fill_in 'Email', with: user.email
#     fill_in 'user_password', with: user.password
#     click_button 'Sign In'
#
#     expect(page).to_not have_content("Sign In")
#     expect(page).to have_content("Sign Out")
#
#     visit new_user_session_path
#
#     expect(page).to have_content("You are already signed in.")
#   end
# end
