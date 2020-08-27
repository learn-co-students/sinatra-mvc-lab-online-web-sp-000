class PigLatinizer

  def piglatinize(string)
    # split string into individual parts
    a = string.split(" ")
    # piglatinize each word using piglatinize_word helper method
    b = a.map { |word| piglatinize_word(word) }
    # join the words again into a string
    b.join(" ")
  end

  def piglatinize_word(word)

    first_letter = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
      # piglatinize word that starts with vowel
    else
      consonants = []
      consonants << word[0]
      # piglatinize word that starts with a constant
      if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        consonants << word[1]

        if ["a", "e", "i", "o", "u"].include?(word[2]) == false
          consonants << word[2]

        end
      end
    end

      "#{word[consonants.length.-1] + consonants.join + "ay"}"
    end
end
