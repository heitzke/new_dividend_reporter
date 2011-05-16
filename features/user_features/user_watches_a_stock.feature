Feature: User watches a stock
  In order to save a stock to my watchlist
  As a user of the dividend reporter
  I would like to choose to watch a stock from the master list

  Scenario: User adds a stock to his/her watchlist
    Given I am logged in
    Given there is a stock with company_name: "Google, Inc."
    When I am on the stocks index page
    And I follow "watch"
    Then I follow "test@user.com"
    Then I should see "Google, Inc."
