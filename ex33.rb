i = 0
numbers = []

for i in (0..6)
  puts "At the top i is #{i}"
  numbers.push(i)
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}\n\n"
end

puts "-" * 10
puts "List"
puts "-" * 10
puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num}
