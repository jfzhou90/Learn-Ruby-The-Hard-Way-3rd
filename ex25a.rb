require "./ex25.rb"

sentence = " AA All good things come to those who wait. ZZ"
# using .split(' '), this break up the sentences into
# words where ever there's a space
words = Ex25.break_words(sentence)

# shows the list of words that was broken
puts words

# sorting the worlds alphabetically
sorted_words = Ex25.sort_words(words)

# shows sorted words
puts sorted_words

# prints first word then pops it off the list
Ex25.print_first_word(words)
# prints last word then pops it off the list
Ex25.print_last_word(words)
# shows list after removing first and last word
puts words

# prints first sorted words, has nothing to do with unsorted words.
# Wont see any difference due to the order never changed for first and last
# first and last words are popped.
Ex25.print_first_word(sorted_words)
Ex25.print_last_word(sorted_words)
puts sorted_words

# This restarts the sorted words again.
sorted_words = Ex25.sort_sentence(sentence)
sorted_words
Ex25.print_first_and_last(sentence)
Ex25.print_first_and_last_sorted(sentence)
