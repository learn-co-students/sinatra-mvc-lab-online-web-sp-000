require 'pry'

class PigLatinizer

    def piglatinize(words)
        divide(words)
    end 
    
    def divide(words)
        if words.include?(" ")
            sentence(words)
        else 
            array = []
            if consonant?(words)
                blank = words.split("").rotate(1).join("")
                if consonant?(blank)
                    blank2 = blank.split("").rotate(1).join("")
                    if consonant?(blank2)
                        blank3 = blank2.split("").rotate(1).join("") << "ay"
                        array << blank3
                    else 
                        blank2 << "ay"
                        array << blank2
                    end
                else 
                    blank << "ay"
                    array << blank
                end 
            else 
                blank = words << "way"
                array << blank
            end 
            array[0]
        end 
    end 

    def consonant?(character)
        !character[0].match(/[aieouAEIOU]/)
    end 

    def sentence(words)
        array = []
        words.split(" ").each do |x|
            if consonant?(x)
                blank = x.split("").rotate(1).join("")
                if consonant?(blank)
                    blank2 = blank.split("").rotate(1).join("")
                    if consonant?(blank2)
                        blank3 = blank2.split("").rotate(1).join("") << "ay"
                        array << blank3
                    else 
                        blank2 << "ay"
                        array << blank2
                    end 
                else 
                    blank << "ay"
                    array << blank
                end 
            else 
                blank = x << "way"
                array << blank
            end 
        end 
        final = array.join(" ")
        final
    end



end 