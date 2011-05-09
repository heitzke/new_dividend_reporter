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
  first_name(:unique => false)      { Name.first_name         }
  last_name(:unique => false)       { Name.last_name          }
  middle_initial(:unique => false)  { ('A'..'Z').to_a.sample  }
end

