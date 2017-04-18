puts "I will now count my chickens:"

# any #{} in a "" will compute.
# prints Hen 30
puts "Hen #{25 + 30 / 6}"
# prints Roosters 97 ( 100 - ( (25 * 3) % 4) )
puts "Roosters #{100 - 25 * 3 % 4}"

puts "Now I will count the eggs:"

# prints 7 (3 + 2 + 1 - 5 + (4 % 2) - (1 / 4) + 6)
# Should be 6.75, however the data type is int, not float or double
# to do decimal, simply make the data to a float or double type data
# example, changing 1 to 1.0
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
# it only works only on that specific 1.0
puts 3 + 2 + 1 - 5 + 4 % 2 - 1.0 / 4 + 6

puts "Is it true that 3 + 2 < 5 - 7?"

# prints a boolean response. true or false
puts 3 + 2 < 5 - 7

puts "Whats is 3 + 2? #{3 + 2}"
puts "What is 5 -7? #{5 - 7}"

puts "Oh, thats why it's false."

puts "How about some more."

puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"
