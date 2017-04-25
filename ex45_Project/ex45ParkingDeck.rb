require "./ex45Scene.rb"

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
