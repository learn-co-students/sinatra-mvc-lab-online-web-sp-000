class PigLatinizer 

    def piglatinize(phrase)
        phrase_array = phrase.split(" ")

        phrase_array.collect do |word| 
            if word.start_with?(/[aeiouAEIOU]/) 
                word.concat("way")

            else 
                #build a method to remove all the consonants up until a vowel 
                word_array = word.split(/([aeiou])/)
                word_array.push(word_array.shift) << "ay"
                word_array.join
            end 
        end.join(" ")
    end 

end 