class PigLatinizer 


    def convert_word(text)
        if /^[aeiou]/i.match(text)
            "#{text}way"
        else
            word = text.split(/([aeiou].*)/)
            "#{word[1]}#{word[0]}ay"
        end
    end

    def piglatinize(text) 
        #vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        words = text.split(" ")
        words.collect {|word|convert_word(word)}.join(" ")
    end

    #def 
    #    new_word = @text << "way"
    
    #end





end