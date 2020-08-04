class PigLatinizer

  def piglatinize_word(word)
    vowels = %w(a e i o u A E I O U)
    consonants = []
    if vowels.include?(word[0])
      @piglatin = word + "way"
    else
      letters = word.split('')
      until vowels.include?(letters[0])
        consonants << letters[0]
        letters.shift
      end
      @piglatin = letters + consonants << "ay"
    end
    @piglatin.class == Array ? @piglatin.join : @piglatin
  end

  def piglatinize_sentence(sentence)
    words = sentence.split(" ")
    piglatin = words.map {|word| piglatinize_word(word)}
    piglatin.join(" ")
  end

  def piglatinize(statement)
    if statement.split(" ").count == 1
      piglatinize_word(statement)
    else
      piglatinize_sentence(statement)
    end
  end
end
