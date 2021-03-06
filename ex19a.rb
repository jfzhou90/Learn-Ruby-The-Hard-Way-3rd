item, noItem, objects, release = ARGV
def taken_quote(item, noItem, objects, release)
  puts "I don't know who you are. I don't know what you want."
  puts "If you are looking for #{item}, I can tell you I don't have #{noItem}."
  puts "But what I do have are a very particular set of #{objects}, "
  puts "#{objects} I have acquired over a very long career."
  puts "#{objects} that make me a nightmare for people like you."
  puts "If you let my #{release} go now, that'll be the end of it."
  puts "I will not look for you, I will not pursue you."
  puts "But if you don't, I will look for you, "
  puts "I will find you, and I will kill you."
end

taken_quote(item, noItem, objects, release)

puts "." * 10
puts "Try your own version?"
puts "listener looking for? >"
item = $stdin.gets.chomp
puts "You don't have? >"
noItem = $stdin.gets.chomp
puts "What you have? >"
objects = $stdin.gets.chomp
puts "What listener have? >"
release = $stdin.gets.chomp

taken_quote(item,noItem, objects, release)

puts "." * 10
search = "treats"
reject = "cookies"
ability = "cooking skills"
let_go = "M&M chocolates"

taken_quote(search, reject, ability, let_go)
