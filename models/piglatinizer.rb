class PigLatinizer
    
    
    def piglatinize(input_str)
      input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
    end

    def consonant?(char)
        !char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if !consonant?(word[0])
            word = word + "w"
            #if starts with a vowel add a "w"
        elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
            word = word.slice(3..-1) + word.slice(0,3)
            #word starts with 2 consonants
        elsif consonant?(word[0]) && consonant?(word[1])
            word = word.slice(2..-1) + word.slice(0,2)
            #starts with one consonant
        else
            word = word.slice(1..-1) + word.slice(0)
        end
        word << "ay"
    end

    def piglatinize_sentence(senentence)
        senentence.split.collect { |word| piglatinize_word(word) }.join(" ")
    end

end