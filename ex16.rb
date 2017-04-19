filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you doing want that, hit CTRL - C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
# target.truncate(0)   <--- not needed

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets
print "line 2: "
line2 = $stdin.gets
print "line 3: "
line3 = $stdin.gets

combine = line1 + line2 + line3

puts "I'm going to write these to the file."

target.write(combine)

puts "And finally, we close it."
target.close
