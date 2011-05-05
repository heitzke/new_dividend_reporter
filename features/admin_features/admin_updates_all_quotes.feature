Feature: Admin updates all quotes
  In order to see the most current information
  As an administrator on the dividend reporter
  I would like to be able to update all quotes at one time

  Scenario: Admin update all quotes at one time
    Given I am an authenticated administrator
    Given I am on the admin new quotes page
    When I press "Update"
    Then I should see "Quotes updated successfully"
