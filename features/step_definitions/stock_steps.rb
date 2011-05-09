Given /^there is a stock$/ do
  Stock.make
end

Given /^there is a stock with company_name: "([^"]*)"$/ do |name|
  Stock.make(:company_name => name)
end

