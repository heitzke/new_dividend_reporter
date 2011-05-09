Feature: user views stock index
  In order to view the stock index
  As a user of the dividend reporter application
  I would like to be able to see a list of stocks on the landing page

  Scenario: user sees stock index page
    Given there is a stock
    When I am on the stocks index page
    Then show me the page
    Then I should see stock.company_name
