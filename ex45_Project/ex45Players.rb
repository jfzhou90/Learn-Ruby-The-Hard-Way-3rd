

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
