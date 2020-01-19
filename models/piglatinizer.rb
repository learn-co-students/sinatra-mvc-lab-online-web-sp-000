class PigLatinizer

  def piglatinize(sentence)
    breakdown = sentence.split(" ")
    word_transform = breakdown.map {|word| piglatinize_word(word)}
    word_transform.join(" ")
  end

  def piglatinize_word(word)
    first_character = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first_character)
      "#{word}way"
    else
      consonants = []
      consonants << word[0]

      if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        consonants << word[1]
        if ["a", "e", "i", "o", "u"].include?(word[2]) == false
          consonants << word[2]
        end
      end

      "#{word[consonants.length..-1] + consonants.join + "ay"}"

    end

  end

end
