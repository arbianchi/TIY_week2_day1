require "pry"
require "./db/setup"
require "./lib/all"

i = Item.new 

puts "There are #{i.count_items}"

binding.pry
