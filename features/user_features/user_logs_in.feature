Feature: User logs in
  In order to use the user features of the application
  As a non-logged-in visitor of the dividend reporter
  I would like to log in to the application

  Scenario: User logs in successfully
    Given I am on the login page
    Given I fill in "Username" with my username
    And I fill in "Password" with my password
    When I press "Sign In"
    Then I should see "My Watchlist"

  Scenario: User logs in unsuccessfully because of incorrect password
    Given I am not logged in
    Given I am on the login page
    Given I fill in "Username" with my username
    And I fill in "Password" with something other than my password
    When I press "Sign In"
    Then I should see "Password Incorrect"

  Scenario: User logs in unsuccessfully because of incorrect username
    Given I am not logged in
    Given I am on the login page
    Given I fill in "Username" with something other than my username
    Given I fill in "Password" with my password
    When I press "Sign In"
    Then I should see "Username Error"
