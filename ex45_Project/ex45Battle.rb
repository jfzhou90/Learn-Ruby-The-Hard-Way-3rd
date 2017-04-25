require "./ex45Scene.rb"
require "./ex45Players.rb"

class Battle < Scene
  def enter()
    puts "You pull out your pocket knife!"
    @patient = Patient.new()
    @zombie = Zombie.new()

    puts "Time to fight a zombie! You have #{@patient.health} health points."

    while (@zombie.health >=0)
      accuracy = rand (1..10)

      @zombie.attack(@patient, accuracy)
      if (@patient.health <= 0)
        puts "You have zero health."
        return 'dead'
      end
      puts "You have #{@patient.health} health points."
      print "Are you going to take a quick break or attack? > "
      choice = $stdin.gets.chomp

      if  choice.include?("attack")
        @patient.attack(@zombie)
        puts "You attacked and the zombie now has #{@zombie.health} points."
      elsif choice.include?("break")
        @patient.dodge
      end
    end

    puts "The Zombie ran out of energy and melts into a puddle of blood."
    return 'finish'

  end
end
