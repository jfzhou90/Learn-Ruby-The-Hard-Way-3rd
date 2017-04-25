require "./ex45Scene.rb"

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
