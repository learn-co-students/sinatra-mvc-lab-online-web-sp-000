class PigLatinizer
  def piglatinize(input_text)

    output_array = []
    @word_array = input_text.split(" ")
    @word_array = @word_array.map do |word|
      translate(word)
    end
    @word_array.join(" ")
  end

  def translate(word)
    # Split word into character array
    word = word.chars
    # Check if word is capitalized and set caps_flag accordingly
    caps_flag = true if upcase?(word.first)
    # Downcase word
    word = word.map { |character| character.downcase }
    # Check if first letter is vowel
    if vowel?(word.first)
    #   if vowel:
          word << "w"
    #     add "w" to end of word
    else
    #   if not:
          word = move_consonants(word)
    #     pick off starting consonants and
    #     add starting consonants to end of word
    end
    # If caps_flag is true capitalize word
    word[0] = word[0].upcase if caps_flag
    word = word.join + "ay"
    word
  end

  def vowel?(character)
    if character.downcase == "a" ||
        character.downcase == "e" ||
        character.downcase == "i" ||
        character.downcase == "o" ||
        character.downcase == "u"
      true
    end
  end

  def upcase?(character)
    true if character == character.upcase
  end

  def move_consonants(word)
    # moves letters from the start to the end of the word array until a vowel is found
    # or every letter has been moved.
    count = 0
    until vowel?(word[0] || count >= word.length)
      removed_letter = word.shift
      word << removed_letter
      count += 1
      if word.last == 'q'
        removed_letter = word.shift
        word << removed_letter
        count += 1
      end
    end
    word
  end
end
