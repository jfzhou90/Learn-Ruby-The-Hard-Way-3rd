car, pc, vacation = ARGV

car = car.downcase
vacation = vacation.capitalize
pc = pc.capitalize

if car == "bmw"
  car = car.upcase
else
  car = car.capitalize
end

print "What is the your favourite color of your dream car #{car}? "
color = $stdin.gets.chomp.capitalize
print "How much is your #{pc}? $"
price = $stdin.gets.chomp.to_f
price = '%.2f'% price
print "What country is #{vacation} in? "
place = $stdin.gets.chomp.capitalize

puts "Your #{pc} cost $#{price}."
puts "Your dream car #{car} should be #{color}."
puts "Your must visit #{vacation} in #{place}."
