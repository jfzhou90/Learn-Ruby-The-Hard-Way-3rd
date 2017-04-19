# takes in the name of the file as first argument
filename = ARGV.first

# Declaring a variable for the opened filename
txt = open(filename)

puts "Here's your file #{filename}:"

# Prints contents of the declared variable file
print txt.read
txt.close()

print "Type the file name again: "
# instead of using the ARGV, you also use $stdin.gets.chomp
file_again = $stdin.gets.chomp

# Same thing, declaring the variable for the file
txt_again = open(file_again)
# Opening the file and reads it.
print txt_again.read
txt_again.close()
