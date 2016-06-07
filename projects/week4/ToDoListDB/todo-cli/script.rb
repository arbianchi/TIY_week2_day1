require "pry"
require "./db/setup"
require "./lib/all"

i = Item.new 
u = User.new
a = Address.new
p = Purchase.new

#How many items are there?
puts "There are #{i.count_items} items."

#What is the most expensive item?
max = i.most_expensive_item
puts "The most expensive item is #{max}"

#Who live at address?
name = a.find_by_address
puts "#{name.first_name} #{name.last_name} lives at 7153 Predovic Falls" 

#How many Mediocre Copper Bottles did we sell?
itemid = i.get_item_id
mcb = p.purchases_by_item_id itemid
puts mcb
binding.pry
