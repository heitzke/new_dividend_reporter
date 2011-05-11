Feature: User watches a stock
  In order to save a stock to my watchlist
  As a user of the dividend reporter
  I would like to choose to watch a stock from the master list

  Background:
    Given I am logged in

  Scenario: User adds a stock to his/her watchlist
    Given there is a stock with company_name: "Google, Inc."
    When I am on the stocks index page
    Then show me the page
    And I follow "watch"
    And I visit my user show page
    Then I should see "Google, Inc."
