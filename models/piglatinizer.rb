class PigLatinizer


    def split_words(text)
        @word_array = text.split(" ")
    end

    def begins_vowel?(word)
       word_down= word.downcase
        if word_down[0] == "a" || word_down[0] == "e" || word_down[0] == "i" || word_down[0] == "o" || word_down[0] == "u"
        true
        else false
        end
    end

    def piglatinize_vowel_word (word)
        word + "way"
    end

    def piglatinize_cons_word (word)
        word.split(/([aeiou].*)/).rotate.join("")+"ay"
    end

    
    def piglatinize (text)
        split_words(text)
        fixed = @word_array.map do |word| 
            if begins_vowel?(word)
                piglatinize_vowel_word (word)
            else
                piglatinize_cons_word (word)
            end
        end
        fixed.join(" ")
    end

end

