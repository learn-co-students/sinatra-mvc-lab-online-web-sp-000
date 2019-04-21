class PigLatinizer
  def piglatinize(input_text)
    output_array = []
    word_array = input_text.split(" ")
    word_array.each do |word|
      word = word.chars
      if !vowel?(word.first)
        first_letter = word.shift
        if upcase?(first_letter)
          first_letter = first_letter.downcase
          word[0] = word.first.upcase
        end
        word << first_letter
        word = word.join + "ay"
      else
        word = word.join + "way"
      end
      output_array << word
    end
    output_array.join(" ")
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
