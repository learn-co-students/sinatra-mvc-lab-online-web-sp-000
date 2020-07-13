class PigLatinizer
#  attr_accessor :text, :latinized_text
  
 # def initialize (text)
#    @text = text
#    @latinized_text = latinize
#  end
  
  def piglatinize (text)
    words = text.split(" ")
    pig_words = words.collect do |word|
      
      characters = word.split("")
      if ["a", "e", "i", "o", "u"].include?(characters.first.downcase)
        pig_word = word + "way"
      else  
          
          
          
          
          
        index_of_vowel = characters.find_index do |character|
          ["a", "e", "i", "o", "u"].include?(character)
        end
        first_chunk = word[0..index_of_vowel]
        first_chunk = first_chunk[0..-2]
        word_without_first_chunk = word[index_of_vowel..-1]
        pig_word = word_without_first_chunk + first_chunk + "ay"
      end
    end
    pig_words.join(" ")
  end
end