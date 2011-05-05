Feature: Admin adds a stock
  In order to add a stock to the master list
  As an administrator of the dividend reporter
  I would like to be able to add a stock symbol to follow

  Scenario: Admin adds a stock to masterlist
    Given I am authenticated administrator
    Given I am on the admin new stock page
    When I fill in "Stock Symbols" with "GOOG"
    And I press "Add Stocks"
    Then I should see "Stocks added successfully"
