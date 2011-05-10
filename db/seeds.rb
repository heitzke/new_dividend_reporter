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
