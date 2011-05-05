Feature: User Signs Up
  In order to use all user features of the dividend reporter
  As a new user
  I would like to create and account for myself

  Scenario: Vistor signs up successfully
    Given I am not logged in
    Given I am on the create account page
    And I fill in "Username" with "testuser"
    And I fill in "Password" with "password21"
    And I fill in "Confirm Password" with "password21"
    And I fill in "Email" with "test@user.com"
    When I press "Sign Up"
    Then I should see "Account created successfully"

  Scenario: Visitor signs up unsuccessfully
    Given I am not logged in
    Given I am on the create account page
    And I fill in "Username" with "testuser"
    And I fill in "Password" with "password21"
    And I fill in "Confirm Password" with "password25"
    And I fill in "Email" with "test@user.com"
    When I press "Sign up"
    Then I should see "Account created unsuccessfully"
