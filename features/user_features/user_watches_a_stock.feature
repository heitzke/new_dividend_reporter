Feature: User watches a stock
  In order to save a stock to my watchlist
  As a user of the dividend reporter
  I would like to choose to watch a stock from the master list

  Background:
    Given I am on the new user registration page
    And I fill in "Email" with "test@user.com"
    And I fill in "Password" with "password21"
    And I fill in "Password confirmation" with "password21"
    And I press "Sign up"

  Scenario: User adds a stock to his/her watchlist
    Given there is a stock with company_name: "Google, Inc."
    When I am on the stocks index page
    And I follow "watch"
    And I visit my user show page
    Then show me the page
    Then I should see "Add to Watchlist"
