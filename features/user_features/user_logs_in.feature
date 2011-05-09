Feature: User logs in
  In order to use the user features of the application
  As a non-logged-in visitor of the dividend reporter
  I would like to log in to the application

  Scenario: User logs in successfully
    Given I am on the login page
    Given I fill in "Email" with "user@example.com"
    And I fill in "Password" with "password21" 
    When I press "Sign in"
    Then I should see "My Watchlist"

  Scenario: User logs in unsuccessfully because of incorrect password
    Given I am on the login page
    Given I fill in "Email" with "user@example.com"
    And I fill in "Password" with "password222"
    When I press "Sign in"
    Then I should see "Invalid email or password"

  Scenario: User logs in unsuccessfully because of incorrect username
    Given I am on the login page
    Given I fill in "Email" with "buser@example.com"
    Given I fill in "Password" with "password21"
    When I press "Sign in"
    Then I should see "Invalid email or password"
