require 'machinist/active_record'
require 'sham'
require 'faker'
include Faker

Sham.define do
  # Stock
  company_name                    { |index| index.to_s                  }
  # Ticker
  ticker                          { |index| index.to_s                  }
  # User
  email                           { |index| index.to_s + Internet.email }
end

Stock.blueprint do
  company_name
  ticker
end

User.blueprint do
  email
  password                          { '123456'                }
  password_confirmation             { '123456'                }
  first_name                        { Name.first_name         }
  last_name(:unique => false)       { Name.last_name          }
  middle_initial(:unique => false)  { ('A'..'Z').to_a.sample  }
end

Quote.blueprint do
  last_price                        { 25.06                   }
  dividend_yield                    { 7.54                    }
  ex_dividend_date                  { "05/05/2010"            }
  dividend_pay_date                 { "07/07/2011"            }
  dividends_per_share               { 1.37                    }
end

UserStockWatches.blueprint do
  stock_id
  user_id
end
