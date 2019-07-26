class PigLatinizer
  
  def pig_latinized_word(word)
    word_consonants = ""
    if word[0].match?(/[AaEeIiOoUu]/)
      word_consonants << 'w'
    end
    hit_vowel = false
    while hit_vowel == false do
      # binding.pry
      if word[0].match?(/[AaEeIiOoUu]/)
        hit_vowel = true
      else
        word_consonants << word[0]
        word[0] = ''
      end
    end
    word << word_consonants
    word << "ay"
  end
  
  def piglatinize(sentence)
    sentence.split(" ").map { |word| pig_latinized_word(word) }.join(" ")
  end
  
end