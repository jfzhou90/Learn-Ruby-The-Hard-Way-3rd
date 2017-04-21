people = 30
cars = 40
trucks = 15


if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fines, let's stay home then."
end

if people > cars || people > trucks
  if trucks > cars
    puts "Let's take the trucks."
  else
    puts "Lets take the cars."
  end
end
