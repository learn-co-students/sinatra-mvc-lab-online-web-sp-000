class Piglatinizer
    attr_reader :text

    def initialize(text)
        @text_array = text.split(" ")
    end

    def convert_word(word)
        #If word begins with vowel
            #grab vowel, length of word, build new word with vowel at end +"way"
            #Return updated word
        #If word begins with consonant
            #Grab all leading consonants, move to end + "ay"
            #Return updated word
        converted_word 
    end

    def piglatinize_text
        @text_array.map {|word| convert_word(word)}
    end







    



end
