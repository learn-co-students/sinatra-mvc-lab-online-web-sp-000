class PigLatinizer
  attr_reader :phrase
  
  def initialize(phrase = nil)
    @phrase = phrase
  end
  
  def piglatinize_word(word)
    new_word = ""
    vowels = 'aeiouAEIOU'.split("")
    if !vowels.include?(word[0])
      count = 1
      i = 1
      until vowels.include?(word[i])
        count += 1
        i += 1
      end
      new_word += word.chars.drop(count).join("") + (word.chars.take(count).join("")) + 'ay'
    else
      new_word += (word + 'way')
    end
  end
  
  def piglatinize(phrase = self.phrase)
    words = phrase.split(" ")
    words.map! { |word| piglatinize_word(word) }
    words.join(" ")
  end
end