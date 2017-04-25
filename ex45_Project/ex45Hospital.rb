require "./ex45Scene.rb"

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
