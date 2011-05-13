#Given /^there is a stock$/ do
#  Stock.make
#end

Given /^there is a stock with company_name: "([^"]*)"$/ do |name|
  @stock = Stock.make(:company_name => name)
  @quote = Quote.make(:stock_id => @stock.id)
  @user_stock_watches = UserStockWatch.make(:stock_id => @stock.id, :user_id => @user.id)
end

Given /^a stock exists with company_name: "([^"]*)"$/ do |name|
  @stock = Stock.make(:company_name => name)
  @quote = Quote.make(:stock_id => @stock.id)
  @user_stock_watches = UserStockWatch.make(:stock_id => @stock.id, :user_id => @user.id)
end

