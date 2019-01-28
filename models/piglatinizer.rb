class PigLatinizer 
  
  
  def piglatinize(text)
    
    words = text.split(' ')
    
    latin_words = words.collect do |word|
      if self.is_vowel(word[0].downcase)
        word += "way"
      else 
        latin = word[1,(word.length -1)]
        latin += word[0] + 'ay'
        latin
      end
    end
    latin_words.join(" ")
    latin_words
  end
  
  def is_vowel(letter)
    vowels = ['a','e','i','o','u']
    vowels.any? do |vowel|
      if vowel == letter
        return true 
      end
    end
    return false 
  end
  
end