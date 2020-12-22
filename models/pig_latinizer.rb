class PigLatinizer
  attr_accessor :text

  def initialize    
  end

  def piglatinize(text)
    piglatinized_words = []
    vowels = "aeiouAEIOU".split("")
    words = text.split(" ")
    words.each do |word|
      letter_split_word = word.split("")
      if vowels.include?(letter_split_word.first)
        letter_split_word << "way"
        joined_word = letter_split_word.join("")
      else
        consonant_split_word = word.split(/([^aeiouy]+)(.*)/).reverse
        consonant_split_word << "ay"
        joined_word = consonant_split_word.join("")        
      end
      piglatinized_words << joined_word
    end
    piglatinized_words.join(" ")
  end
end
