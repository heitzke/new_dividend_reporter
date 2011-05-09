require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.define do
  # Stock
  company_name                    { |index| index.to_s                }
  # Ticker
  ticker                          { |index| index.to_s(0..3)          }
end

Stock.blueprint do
  company_name
  ticker
end
