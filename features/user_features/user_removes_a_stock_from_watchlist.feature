Feature: User stops watching a stock
  In order to stop watching a stock on my watchlist
  As a user of the dividend reporter
  I would like to remove the stock from my watchlist

  Scenario: User removes stock from his/her watchlist
    Given I am an authenticated user with a stock on my watchlist
    Given I am on my user show page
    And I select 'stop watching' from 'menu'
    When I press 'Update Watchlist'
    Then I should see 'Stock successfully removed from watchlist'
