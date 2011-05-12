class Stock < ActiveRecord::Base
  validates_presence_of :ticker, :company_name
  has_many :quotes
  has_many :user_stock_watches
  has_many :users, :through => :user_stock_watches
end
