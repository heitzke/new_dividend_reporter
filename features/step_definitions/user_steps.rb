Given /^I am on the login page$/ do
  visit new_user_session_path
end

Given /^I am not logged in$/ do
  current_user = nil
end

Given /^I am on the create account page$/ do
  visit new_user_registration_path 
end

Given /^I am on the stocks index page$/ do
  visit stocks_path
end

Given /^I am an authenticated user with email: "([^"]*)"$/ do |email|
  u = User.make
  u.update_attributes(:email => email)
  u.save
  current_user = u
end

Given /^I am an authenticated user$/ do
    pending # express the regexp above with the code you wish you had
end
