Feature: User changes password
  In order to update my password
  As a user of the dividend reporter
  I would like to be able to change my password

  Scenario: Change password successfully
    Given I am an authenticated user
    Given I am on the change password page
    Given I fill in "Current Password" with my current password
    And I fill in "New Password" with "password21"
    And I fill in "Confirm New Password" with "password21"
    When I press "Update Password"
    Then I should see "Password Updated Successfully"

  Scenario: Change password unsuccessfully when using an incorrent current password
    Given I am an authenticated user
    Given I am on the change password page
    Given I fill in "Current Password" with something other than my current password
    And I fill in "New Password" with "password21"
    And I fill in "Confirm New Password" with "password21"
    When I press "Update Password"
    Then I Should see "Password Updated Unsuccessfully"

  Scenario: Change password unsuccessfully when using the correct current password
    Given I am an authenticated user
    Given I am on the change password page
    Given I fill in "Current Password" with my current password
    And I fill in "New Password" with "password21"
    And I fill in "Confirm New Password" with "password25"
    When I press "Update Password"
    Then I should see "Password Updated Unsuccessfully"
