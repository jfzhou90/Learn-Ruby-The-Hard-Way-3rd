cars = 100
space_in_a_car = 4.0
# Study drill 1
space_in_a_car2 = 4
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
# Study drill 2
carpool_capacity2 = cars_driven * space_in_a_car2
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
# Study drill 1
puts "We can transport #{carpool_capacity2} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
