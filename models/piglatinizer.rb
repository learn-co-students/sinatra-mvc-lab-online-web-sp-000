class PigLatinizer 
  def piglatinize(phrase)
     phrase.split(" ").size == 1 ? single_word(phrase) : many_words(phrase)
  end
    
  def single_word(word)
     if word.chars.first.match(/[aeiouAEIOU]/)
       word + "way"
     else 
        vowels = word.sub(/[^aeiouAEIOU]*/, "")
        consonants = word.gsub(vowels, "")
        latinized_word = (vowels + consonants + "ay")
     end
  end
    
  def many_words(words)
    latinized_words = []
    words.split.each do |word|
       if word.chars.first.match(/^[aeiouAEIOU]/) 
        latinized_words << (word + "way")
      else 
        vowels = word.sub(/[^aeiouAEIOU]*/, "")
        consonants = word.gsub(vowels, "")
        latinized_words << (vowels + consonants + "ay")
      end
    end
    latinized_words.join(" ")
  end
end 