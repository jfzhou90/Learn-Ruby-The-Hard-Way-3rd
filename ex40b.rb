class Song
  def initialize(*args)
    # If song.new() only takes in 1 argument, and it's hash
    if args[0].instance_of? Hash
      @lyrics = args[0].keys.first
      @singer = args[0].values.first
    # If taking 2 arguments.
    else
      @lyrics = args[0]
      @singer = args[1]
    end
  end

  def sing_along()
    @lyrics.each {|line| puts line}
  end

  def singer_name()
    puts "The song is composed by #{@singer}"
  end

  def line_reader(lineNum)
    line = @lyrics[lineNum-1]
    puts "The lyrics line #{lineNum} is \"#{line}\"."
  end
end

# The lyrics are arrays, so they have [] brackets
practiceSing = Song.new(["This is line 1",
              "This is line 2",
              "This is line 3"],"PracticeBand")

practiceSing.sing_along()
practiceSing.singer_name()
practiceSing.line_reader(3)

puts "." * 20
puts "\n"

# Variable for passing. Working on dictionary to pass the singer value.
lovingThis = {["Don't know if I'm right",
              "but let's see if this works",
              "I hope it does"] => 'TestingBand'}

practiceVariable = Song.new(lovingThis)

practiceVariable.sing_along()
practiceVariable.singer_name()
practiceVariable.line_reader(3)
