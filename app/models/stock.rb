class Stock < ActiveRecord::Base
  validates_presence_of :ticker, :company_name
end
