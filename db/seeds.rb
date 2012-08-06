# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Create Users ..."

user1 = User.create(:name => "John Smith", :email => "john@inotechne.com",
                    :password => "johntest", :password_confirmation => "johntest")
puts "User1 [name: #{user1.name}]  [email: #{user1.email}]  [password: #{user1.password}]"

user2 = User.create(:name => "Anny Smith", :email => "anny@inotechne.com",
                    :password => "annytest", :password_confirmation=> "annytest")
puts "User2 [name: #{user2.name}]  [email: #{user2.email}]  [password: #{user2.password}]"
puts "================================================================================"

puts "Create Relationship ..."
Relationship.create(:follower => user2, :following => user1)
puts "#{user2.name} follow #{user1.name}"

puts "================================================================================"

