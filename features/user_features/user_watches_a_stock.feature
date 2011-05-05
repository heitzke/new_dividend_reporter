Feature: User watches a stock
  In order to save a stock to my watchlist
  As a user of the dividend reporter
  I would like to choose to watch a stock from the master list

  Scenario: User adds a stock to his/her watchlist
    Given a stock exists with company_name: "Google, Inc."
    Given I am an authenticated user
    Given I am on the stocks index page
    Given I select "Watch" from "menu"
    And I press "Add to Watchlist"
    When I visit my user show page
    Then I should see "Add to Watchlist"
