class PigLatinizer 

    def piglatinize(words)
        string_array = words.split(" ")
        new_array = string_array.collect {|word| piglatinize_word(word)}
        new_array.join(" ")
    end

    def piglatinize_word(word)
    
        letters = word.split("")

        if vowel?(letters[0])
            letters.join << "way"
        elsif letters.count > 1
            until vowel?(letters[0])
               letters << letters.shift
            end
            letters.join << "ay"
        end 
    end

    def vowel?(letter)
        letter.downcase =~ /\A[aeiou]/
    end

end 
