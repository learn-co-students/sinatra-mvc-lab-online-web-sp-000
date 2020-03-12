class PigLatinizer 
   attr_accessor :word, :words

   def initialize
      @word = word 
   end 

   def piglatinize
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
        new_word = word.slice(2..word.length) + first_letter + word.slice(1, 1) + "ay"
      end 
   end 

end 