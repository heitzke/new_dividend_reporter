class UserStockWatch < ActiveRecord::Base
  #attr_accessible :user_id, :stock_id
  belongs_to :user
  belongs_to :stock
end

