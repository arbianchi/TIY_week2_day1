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
name = a.find_user_by_address
puts "#{name.first_name} #{name.last_name} lives at 7153 Predovic Falls" 

#How many Mediocre Copper Bottles did we sell?
itemid = i.get_item_id
mcb = p.purchases_by_item_id itemid
puts mcb

#What is our total revenue (item cost * quantity sold for all purchases)?

prices_array = []
Purchase.all.each do |x|
  prices_array.push((x.item.price.to_f) * (x.quantity))
end

puts "Total revenue is: #{(prices_array.reduce(:+)).round(2)}."

#How much did Carmelo Towne spend?
userid = u.find_id_by_name("Carmelo","Towne")
total = p.cost_of_total_purchases userid
puts "Carmelo Towne spent $#{total}."

#How any users have >1 address?
#Pluck somehow...
binding.pry
