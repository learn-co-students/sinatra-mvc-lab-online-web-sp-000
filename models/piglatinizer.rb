class PigLatinizer 
  
  def piglatinize(phrase) 
    converted = []
    words = phrase.split(" ")
    words.map do |word|
      if word[0].match(/[aeiouAEIOU]/)
        pl_word = word + 'way'
      else
        letters = word.chars 
        first_vowel = letters.find_index {|l| l.match(/[aeiouAEIOU]/)}
        syl1 = word[first_vowel, word.length - 1]
        syl2 = word[0, first_vowel]
        pl_word = syl1 + syl2 + 'ay'
      end
      converted << pl_word
    end
    converted.join(" ")
  end
  
end 