class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  scope :admin, where(:admin => true)

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :middle_initial, :email, :password, :password_confirmation, :remember_me, :admin
  has_many :stocks, :through => :user_stock_watches
  has_many :user_stock_watches

  def watch stock
    self.user_stock_watches.create(:stock => stock)
  end

  def unwatch stock
    something = self.user_stock_watches.find_by_stock_id stock
    something.destroy
  end
end
