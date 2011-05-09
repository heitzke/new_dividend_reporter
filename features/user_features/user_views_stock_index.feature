Feature: user views stock index
  In order to view the stock index
  As a user of the dividend reporter application
  I would like to be able to see a list of stocks on the landing page

  Scenario: user sees stock index page
    Given there is a stock with company_name: "test company"
    When I go to the stocks index page
    Then show me the page
    Then I should see "test company" 
