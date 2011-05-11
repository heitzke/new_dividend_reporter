Feature: Logged-in user sees corresponding topbar
  In order to have proper site navigation
  As an authenticated user of the dividend reporter
  I would like to be able to see the appropriate topbar options

  Scenario: User sees his/her email address as link in topbar
    Given I am an authenticated user with email: "bob@example.com"
    When I am on the stocks index page
    Then I should see "bob@example.com"

  Scenario: User sees logout link in topbar when logged in
    Given I am an authenticated user
    When I am on the stocks index page
    Then I should see "Log out"
