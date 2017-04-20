module Random25

  # This function will break up words for us.
  def Random25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  # Sorts the words.
  def Random25.sort_words(words)
    return words.sort
  end

  # Prints the first word after shifting it off.
  def Random25.print_first_word(words)
    word = words.shift
    puts word
  end
end
