=begin
# Module Sytle
module MyStuff
  def MyStuff.apple()
    puts "I AM APPLES!"
  end
  # To access this
  # require "./mystuff.rb"
  # MyStuff.appple()

  # this is just a variable
  # to access this
  # require "./mystuff.rb"
  # MyStuff.apple()
  # puts MyStuff::TANGERINE
  TANGERINE = "Living reflection of a dream"
end

puts MyStuff.apple()
puts '-' * 15
puts MyStuff::TANGERINE
=end

=begin
# Class Style
class MyStuff
  def initialize()
    @tangerine = "And now a thousand years between"
  end

  attr_reader :tangerine

  def apple()
    puts "I AM CLASSY APPLES!"
  end

end
=end

# 3 styles of getting things from things:
# Dict style
mystuff['apples']

# Module style
MyStuff.apples()
puts MyStuff::TANGERINE

# Class style
thing = MyStuff.new()
things.apples()
puts thing.tangerine
