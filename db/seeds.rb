# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name

s1 = Sandwich.new(:kind => "Meaty")
s2 = Sandwich.new(:kind => "Vegetarian")
s3 = Sandwich.new(:kind => "Vegan")
s1.save
s2.save
s3.save

quote_array.each do |q|
  qn = Quote.new(:content => q)
  qn.save
end
