
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

Given /^I am on the new user registration page$/ do
  visit new_user_registration_path
end

Given /^I am an authenticated user with a stock on my watchlist$/ do
    pending # express the regexp above with the code you wish you had
end

Given /^I am on my user show page$/ do
    pending # express the regexp above with the code you wish you had
end

Given /^I select 'stop watching' from 'menu'$/ do
    pending # express the regexp above with the code you wish you had
end

When /^I press 'Update Watchlist'$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should see 'Stock successfully removed from watchlist'$/ do
    pending # express the regexp above with the code you wish you had
end

Given /^I am an authenticated user$/ do
    pending # express the regexp above with the code you wish you had
end

When /^I visit my user show page$/ do
    pending # express the regexp above with the code you wish you had
end

