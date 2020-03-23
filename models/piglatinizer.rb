class PigLatinizer
  attr_accessor :text

  def piglatinize(text)
    word_array = text.split(" ")
    word_each = word_array.map{|word| check_word(word)}
    word_each.join(" ")
  end

  def check_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    consonants = []
    if vowels.include?(word[0].downcase)
      "#{word}way"
    else
      consonants << word[0]
      if !vowels.include?(word[1].downcase)
        consonants << word[1].downcase
        if !vowels.include?(word[2].downcase)
          consonants << word[2].downcase
        end
      end
      "#{word[consonants.length..-1] + consonants.join+"ay"}"
    end
  end
end
