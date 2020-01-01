class PigLatinizer
    
    def piglatinize(user_input)
        user_input.split(" ").length == 1 ? piglatinize_word(user_input) : piglatinize_sentence(user_input)
    end

    private

    def consonant?(character)
        !character.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if !consonant?(word[0]) #the word starts with a vowel
            word = word + "w"
        elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2]) # the word starts with 3 consonants
            word = word.slice(3..-1) + word.slice(0,3)
        elsif consonant?(word[0]) && consonant?(word[1]) # the word starts with 2 consonants
            word = word.slice(2..-1) + word.slice(0,2)
        else # the word starts with 1 consonant
            word = word.slice(1..-1) + word.slice(0)
        end
        word << "ay"
    end

    def piglatinize_sentence(sentence)
        sentence.split.collect {|word| piglatinize_word(word)}.join(" ")
    end

end