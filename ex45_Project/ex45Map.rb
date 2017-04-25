require "./ex45Requirements.rb"

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
