# Engine File
require "./ex45Engine.rb"

# Map files
require "./ex45Map.rb"

# Scene files
# MAIN SCENE CLASS
require "./ex45Scene.rb"
# -End game scenes
require "./ex45FinishScene.rb"
# -Hospital Scene
require "./ex45Hospital.rb"
# -Lobby Scene
require "./ex45Lobby.rb"
# -Parking Deck Scene
require "./ex45ParkingDeck.rb"
# -Battle Scene
require "./ex45Battle.rb"

  game_map = Map.new('hospital')
  game_engine = Engine.new(game_map)
  game_engine.play()
