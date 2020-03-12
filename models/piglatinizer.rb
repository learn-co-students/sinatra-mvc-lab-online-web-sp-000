class PigLatinizer 
   attr_accessor :word, :words

   def initialize
      @word = word 
   end 

   def piglatinize(word)
      # takes care of parsing the string into words
      # then putting the piglatinized words back
      # together.
      @words = word.split(" ")
      pig_words = words.map do |w|
         piglatinize_word(w)
      end 
      pig_words.join(" ")
   end 

   def piglatinize_word(word) 
      #  take care of piglatinizing individual words.
      first_letter = word[0].downcase
      
      if first_letter.match(/[aeoui]/)
         "#{word}way"
      else
         word.concat(word.slice!(/^[^aeiou]*/i || ""))
         word += "ay"
      end 
   end 

end 