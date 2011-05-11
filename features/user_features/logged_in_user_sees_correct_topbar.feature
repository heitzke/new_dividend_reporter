Feature: Logged-in user sees corresponding topbar
  In order to have proper site navigation
  As an authenticated user of the dividend reporter
  I would like to be able to see the appropriate topbar options

  Background:
    Given I am on the new user registration page
    And I fill in "Email" with "test@user.com"
    And I fill in "Password" with "password21"
    And I fill in "Password confirmation" with "password21"
    And I press "Sign up"

  Scenario: User sees his/her email address as link in topbar
    Given I am on the stocks index page
    Then I should see "test@user.com" 

  Scenario: User sees logout link in topbar when logged in
    Given I am on the stocks index page
    Then I should see "logout"

  Scenario: User sees home link in topbar when logged in
    Given I am on the stocks index page
    Then I should see "Dividend Reporter"
