# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#
  25.times do
    Stock.create([{ :company_name => Faker::Company.name, :ticker => (0..3).map{65.+(rand(25)).chr}.join }])
  end

  stock = Stock.all
  stock.each do |stock|
    10.times do
      Quote.create([{ :last_price => rand(600).to_f, :ex_dividend_date => "05/05/2010", :dividend_pay_date => "04/04/12", :dividend_yield => rand(50).to_f, :dividends_per_share => rand(50).to_f }])
    end
  end
