class PigLatinizer

    def piglatinize(input)
        original = input.split(" ")
        modified = original.map {|word| piglatinize_word(word)}
        modified.join(" ")
    end

    def piglatinize_word(word)
        
        first_letter = word[0].downcase
        
        if first_letter.start_with?('a','e','i','o','u')
            "#{word}way"
        else
            consonants = []
            consonants << word[0]
                if !word[1].start_with?('a','e','i','o','u')
                    consonants << word[1]
                    if !word[2].start_with?('a','e','i','o','u')
                        consonants << word[2]
                    end
                end
        "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end

end