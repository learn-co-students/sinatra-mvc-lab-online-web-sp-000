class PigLatinizer

    def piglatinize(string)
        if string.split(" ").length == 1
            piglatinize_single_word(string)
        else
            piglatinize_mult_words(string)
        end
    end
    
    def piglatinize_single_word(word)
        if word[0].match(/[AaEeIiOoUu]/)
            word = word + "w"
        elseif (!word[0].match(/[AaEeIiOoUu]/) && !word[1].match(/[AaEeIiOoUu]/) && !word[1].match(/[AaEeIiOoUu]/) )
            word = word.slice(3..-1) + word.slice(0,3)
        elseif (!word[0].match(/[AaEeIiOoUu]/) && !word[1].match(/[AaEeIiOoUu]/) )
            word = word.slice(2..-1) + word.slice(0,2)
        else
            word = word.slice(1..-1) + word.slice(0)
        end
        word = word + "ay"
    end

    def piglatinize_mult_words(words)
        output = words.split(" ") do |word|
            piglatinize_single_word(word)
        end
        output.join(" ")
    end

end
