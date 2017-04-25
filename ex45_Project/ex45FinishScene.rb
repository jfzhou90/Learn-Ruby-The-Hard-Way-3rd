require "./ex45Scene.rb"

class Dead < Scene
  def enter()
    puts "You died! but.... WAIT!"
    puts "You woke up once again! But this time as a mindless zombie."
    exit(0)
  end
end

class Finish < Scene
  def enter()
    puts "Congratulations! You have escaped the hospital!"
    puts "You are a survivor!! for now..."
    exit(0)
  end
end
