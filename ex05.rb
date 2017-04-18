name = 'Joey Zhou'
age = 27 # true in 2017
height = 65 # inches, I know, I'm short.
height_converted = 65 * 2.54 # cm
weight = 140 # lbs, trying to gain a little bit more weight
weight_converted = weight / 2.2 # kg
eyes = 'Black'
teeth = 'White'
hair = eyes # my hair is not my eyes, but they are the same color

puts "Let's talk about #{name}."
puts "He's #{height} inches or #{height_converted} cm tall."
# Using '%.2f' % to make .1 into .10
puts "He's #{height} inches or #{'%.2f'% height_converted} cm tall."
puts "He's #{weight} pounds or #{weight_converted} kg heavy."
# Using round
puts "He's #{weight} pounds or #{weight_converted.round(2)} kg heavy."
# What happens if i use '%.3f'%
puts "He's #{weight} pounds or #{'%.3f'% weight_converted} kg heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

#this line is tricky, try to get it exactly right.
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}"
