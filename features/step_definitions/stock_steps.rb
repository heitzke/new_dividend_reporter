Given /^there is a stock$/ do
  Stock.make
end

Given /^there is a stock with company_name: "([^"]*)"$/ do |name|
  @stock = Stock.make(:company_name => name)
  @quote = Quote.make(:stock_id => @stock.id)
end

