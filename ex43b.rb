class Scene
  def enter()
    puts "This is meant to be override by subclasses."
    exit(0)
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    finish_scene = @scene_map.next_scene('finish')

    while current_scene != finish_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

class Hospital < Scene
  def enter()
    puts "This is a horror game, if you do not wish to get nightmare,"
    puts "please press CTRL + C, otherwise continue..."
    puts "-" * 40
    puts "You just woke up at a hospital, nobody is around you."
    puts "You exit your room, and there is nobody around."
    puts "You walked down the stairs and you saw a shadow."
    puts "There's a man looking at the vending machine with his back facing you."
    puts "You walked towards him while calling to him."
    puts "He turns around and ROARS at you!"
    puts "His face is peeling off, his chest are open!"
    puts "What should you do? run? or fight?"

    print "> "
    choice = $stdin.gets.chomp

    if choice.include?("run")
      puts "You turned around and there was another behind you!"
      puts "You're trapped and the zombies slowsly chews on your tasty flesh."
      return 'dead'
    elsif choice.include?("attack") || choice.include?("fight")
      puts "You picked up your shoes and stuff it in his mouth."
      puts "You punched his head! and it fell off. Zombie dies."
      puts "You freaked out! You want to get to the parking deck"
      puts "to see if you can find a car and escape."
      return 'lobby'
    else
      puts "While you're still trying to figure out what happened,"
      puts "a zombie attacked you from behind, eats your brain."
      return 'dead'
    end
  end
end

class Lobby < Scene
  def enter()
    puts "-" * 40
    puts "You have managed to avoid most of the zombies,"
    puts "You reached the lobby. You found the directory."
    puts "You now know how to get to the parking deck,"
    puts "but you're on the 3rd floor."
    puts "Which route to take? the stairs or the elevator?"

    print "> "
    choice = $stdin.gets.chomp

    if choice.include?("stair")
      puts "You slowly walked down the stairs."
      puts "To your surprised, there was not a single zombie."
      puts "Maybe the were partying somewhere? or maybe"
      puts "they were trying to make a surprise attack on whoever"
      puts "tries to use the elavator?"
      return 'parking_deck'
    elsif choice.include?("elevator")
      puts "You pressed the down key on the elevator."
      puts "TING!"
      puts "another loud 'TING!'."
      puts "Before you got a chance to regret,"
      puts "the loud notification from the elevator has"
      puts "notified the zombie hordes that someone is waiting for the elevator."
      puts "You got attacked by zombie horde, your limbs got torn away."
      return 'dead'
    else
      puts "While you're still trying to figure out what happened,"
      puts "a zombie attacked you from behind, eats your brain."
      return 'dead'
    end
  end
end

class ParkingDeck < Scene
  def enter()
    puts "-" * 40
    puts "You've reached the parking deck."
    puts "A drop of water fell on your head and you freaked out."
    puts "RAWR!!!!! A giant zombie crawls out from the vents."
    puts "In order for you to get to a vehicle, you have no choice,"
    puts "but to battle! You just realized you got a pocket knife."
    return 'battle'
  end
end

class Patient
  attr_accessor :health
  def initialize()
    @health = 15
  end

  def dodge()
    @health += 2
  end

  def attack(opponent)
    @opponent = opponent
    @opponent.health -= 3
  end
end

class Zombie
  attr_accessor :health
  def initialize()
    @health = 15
  end

  def attack(opponent, accuracy_number)
    @opponent = opponent
    if accuracy_number > 5
      puts "The zombie scratched you, and you bleeds."
      @opponent.health -= 3
    else
      puts "The zombie is too slow, it misses!"
    end
  end
end

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

class Map
  @@scenes = {
    'hospital' => Hospital.new(),
    'lobby' => Lobby.new(),
    'parking_deck' => ParkingDeck.new(),
    'battle' => Battle.new(),
    'finish' => Finish.new(),
    'dead' => Dead.new()
    }

    def initialize(start_scene)
      @start_scene = start_scene
    end

    def next_scene(next_scene_name)
      next_scene_value = @@scenes[next_scene_name]
      return next_scene_value
    end

    def opening_scene()
      next_scene(@start_scene)
    end
  end

  game_map = Map.new('hospital')
  game_engine = Engine.new(game_map)
  game_engine.play()
