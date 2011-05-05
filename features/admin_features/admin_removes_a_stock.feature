Feature: Admin removes a stock
  In order to have a stock not show on the master list
  As an administrator of the dividend reporter
  I would like to be able to remove a stock from the master list

  Given a stock exists with company_name: "Google, Inc."
  Given I am an authenticated administrator
  Given I am on the stocks index page
  Given I choose "hide" from "menu"
  When I press "Update"
  Then I should see "Stock hidden successfully"
