require "pry"
 class NumberGame
   def initialize
     @answer = rand(1..100)
     @attempts = 5
   end
 end

g = NumberGame.new

until game_over?
  ask_fornumber
  check_number
end
