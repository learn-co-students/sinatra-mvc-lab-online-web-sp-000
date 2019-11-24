class PigLatinizer

    
    # def initialize(phrase)
    #     @words = phrase.split(" ")
    # end

   def piglatinize(phrase)
    @words = phrase.split(" ")
    return self.convert
   end
 
    def convert
        @converted_phrase = @words.map { |word|
            if get_starting_consonants(word).length == 0
                "#{word}way"
            else
                "#{word}#{get_starting_consonants(word)}ay"[get_starting_consonants(word).length..-1]
            end
        }
        @converted_phrase.join(" ");
    end
    
    def get_starting_consonants(word)
        letters = word.split("")
        found_vowel = false
        starting_consonants = []
        letters.each do |letter|
         
            if letter.downcase == 'a' || letter.downcase == 'e' || letter.downcase == 'i' || letter.downcase== 'o'  || letter.downcase == 'u'
                found_vowel = true
            elsif found_vowel == false
                starting_consonants << letter
            end
       end
      
      starting_consonants.join("")
        
    end





    

end