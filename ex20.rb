input_file = ARGV.first

# f can be anything, it's a variable in the function
# in this case f = current_file
def print_all(f)
  puts f.read
end

# f can be anything
# f = current_file
def rewind(f)
  f.seek(0)
end

# line_count = current_line, f = current_file)
def print_a_line(line_count, f)
# Found an older version of the book that uses .readline()
# puts "#{line_count}, #{f.readline()}"
# Not sure what's the difference between gets.chomp and readline
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file: \n"

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

puts "Doing something to interupt lines."

current_line = current_line += 1
print_a_line(current_line, current_file)

current_line = current_line += 1
print_a_line(current_line, current_file)
