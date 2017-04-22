def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # This line has a bug, so fix it (Fixed)
  if choice=~ /\A[-+]?[0-9]*\.?\Z/
    # /[[:digit:]]/ # && !/[[:alpha:]]/ works too
    # this is regex, regular expression, I don't fully understand it either
    # so it starts with =~
    # I'm gonna break it down.
    # all regex starts with / and ends with /
    # \A means at the beginning
    # [-+] means positive or negative, ? means conditional
    # [0-9] digits only
    # *\. means exponents or decimals are optional too since it ends ?
    # \Z means the end
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end


def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear."
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp.downcase

    if choice.include? "take"
      dead("The bear looks at you then slaps your face off.")
    elsif choice.include? "taunt"
      if !bear_moved
        puts "The bear has moved from the door. You can go through it now."
        bear_moved = true
      else
        dead("The bear gets pissed off and chews your leg off.")
      end
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end


def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print ">"
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You're in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start
