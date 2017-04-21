def test(x, y, z)
  numbers = []
  while x < y
    puts "The top number is #{x}."
    numbers << x
    puts "Here are the numbers: ", numbers
    x += z
    puts "Now x is #{x}."
  end
  return numbers
end

puts "What's your smallest number? >"
start = $stdin.gets.chomp.to_i
puts "What's your biggest number? >"
stop = $stdin.gets.chomp.to_i
puts "How much increment? >"
increase = $stdin.gets.chomp.to_i
test(start, stop, increase)

puts "-" * 20
puts "This only works comes with return function #{test(start, stop, increase)}"
