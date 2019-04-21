class PigLatinizer
  def piglatinize(input_text)

    output_array = []
    @word_array = input_text.split(" ")
    @word_array.map do |word|
      translate(word)
    end
    @word_array.join(" ")
  end
  #    if !vowel?(word.first)
  #      first_letter = word.shift
  #      if upcase?(first_letter)
  #        first_letter = first_letter.downcase
  #        word[0] = word.first.upcase
  #      end
  #      word << first_letter
  #      word = word.join + "ay"
  #    else
  #      word = word.join + "way"
  #    end
  #  end

  end

  def translate
    # Check if word is capitalized and set caps_flag accordingly
    # Downcase word
    # Check if first letter is vowel
    #   if not:
    #     pick off starting consonants
    #     add starting consonants to end of word along with "ay"
    #   if vowel:
    #     add "way" to end of word
    # If caps_flag is true capitalize word
    # return
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
end
