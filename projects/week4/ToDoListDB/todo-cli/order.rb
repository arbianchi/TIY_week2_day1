
require "pry"
require "./db/setup"
require "./lib/all"

i = Item.new 
u = User.new
a = Address.new
p = Purchase.new

puts "Enter your name"
name = gets.chomp

Item.all.each do |x|
  puts
  puts x.description
  puts x.price
  puts x.category
end

puts "Choose an item: "
choice = gets.chomp

c = Item.where(description: choice).first.id

puts "How many?"

o = Order.new




binding.pry
