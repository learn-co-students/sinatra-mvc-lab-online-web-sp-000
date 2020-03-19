class PigLatinizer

  def piglatinize(string)
    split_string = string.split(" ")
    itetrate_string = split_string.collect {|word| piglatinize_word(word)}
    itetrate_string.join(" ")
  end
  def piglatinize_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    first_letter = word[0].downcase
    if vowels.include?(first_letter)
        "#{word}way"
    else
      consonants = []
      consonants << word[0]
        if vowels.include?(word[1]) == false
          consonants << word[1]
          if vowels.include?(word[2]) == false
            consonants << word[2]
          end
        end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end


end
