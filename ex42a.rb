class Person
  def initialize(name)
    @name = name
    @aka = nil
    @pet = nil
    @hobbies = []
    @preferences = {}
  end

  attr_accessor :aka, :pet, :hobbies, :preferences

  def describe()
      puts "Hi, I'm #{@name}."
      puts "I'm also known as #{@aka}." unless @aka.nil?
      puts "I have a pet name #{@pet.name}." unless @pet.nil?
      puts "What I like to do: "
      @hobbies.each { |hobby| puts hobby }
      puts "I prefer:"
      @preferences.each {|key, value| puts "#{key}: #{value}"}
  end
end

class Dog
  def initialize(name)
    @name = name
  end

attr_reader :name

  def voice(sound)
    puts "#{sound}! #{sound}"
  end

  def describe()
    puts "My name is #{@name}."
  end
end

rover = Dog.new('Rover')
clark_kent= Person.new('Clark Kent')
clark_kent.aka = 'Superman'
clark_kent.pet = rover
clark_kent.hobbies = ['Flying', 'Kick Ass', 'Super Laser Eye', 'More Flying']
clark_kent.preferences = {'Coffee' => 'French Vanila', 'Books' => 'Mocking Bird',
                          'Flying' => 'Good Weather'}

louise_lane = Person.new('Louise Lane')
louise_lane.hobbies = ['reading','watch tv','swimming']
louise_lane.preferences = {'Coffee' => 'Dark Roast', 'Books' => 'Journals',
                            'Flying' => 'With Superman'}

rover.voice("Woof")
rover.describe()

clark_kent.describe()
louise_lane.describe()
