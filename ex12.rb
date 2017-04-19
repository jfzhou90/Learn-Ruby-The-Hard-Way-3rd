print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "We have a 20% discount, to find out how much you save. "
print "Type in the price: $"
price = gets.chomp.to_f
discount = price * 0.2
newPrice = price - discount

puts "You saved $#{'%.2f'% discount} today, the new price is $#{newPrice.round(2)}."
