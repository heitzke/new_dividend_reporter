Feature: User logs out
  In order to prevent other users of my machine from using my account
  As a user of the dividend reporter
  I would like to be able to log out of the application

  Scenario: User logs out
    Given I am an authenticated user
    Given I am on the stocks index page
    When I follow "Logout"
    Then I should see "User logged out successfully"
