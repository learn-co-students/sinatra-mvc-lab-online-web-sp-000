class PigLatinizer

    def piglatinize(input)
        x = input.split(" ")
        y = x.map {|word| piglatinize_word(word)}
        y.join(" ")
    end

    def piglatinize_word(word)
        # binding.pry
        first_letter = word.downcase[0]

        #orkpay    
        if ["a", "e", "i", "o", "u"].include?(first_letter)
        #first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter== "u"
            word = word + "w"    

        elsif ["a", "e", "i", "o", "u"].include?(word[0]) == false && ["a", "e", "i", "o", "u"].include?(word[1]) == false && ["a", "e", "i", "o", "u"].include?(word[2]) == false
                word = word.slice(3..-1) + word.slice(0,3)
                # consonants << word[1]
        
            elsif ["a", "e", "i", "o", "u"].include?(word[0]) == false && ["a", "e", "i", "o", "u"].include?(word[1]) == false
              word = word.slice(2..-1) + word.slice(0,2)
                # consonants << word[2]
            else
                word = word.slice(1..-1) + word.slice(0)
            end

            word << "ay"

    end




end