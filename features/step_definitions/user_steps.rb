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

