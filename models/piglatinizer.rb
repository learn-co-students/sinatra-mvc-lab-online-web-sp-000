require 'pry'
class PigLatinizer
  
  def initialize

  end
  
  def starts_with_consonant(word)
    ending = word.slice!(0)
    
    while !(word[0].match?(/[aeiouAEIOU]/)) do 
      ending = ending + word.slice!(0)
    end
    
    new_text = word + ending + "ay"
    new_text
  end
  
  def starts_with_vowel(word)
    new_text = word + "way"
    new_text
  end
  
  def piglatinize(text)
    array_piglat = []
    array_text = text.split(" ")
    array_text.each do |word|
      if (word[0].match?(/[aeiouAEIOU]/))
        array_piglat << starts_with_vowel(word)
      else 
        array_piglat << starts_with_consonant(word)
      end
    end
    array_piglat.join(" ")
  end

end