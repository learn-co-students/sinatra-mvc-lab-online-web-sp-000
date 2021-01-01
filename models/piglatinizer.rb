class PigLatinizer

    def piglatinize(string) 
        split_string = string.split(" ")
        new_string = split_string.map {|word| piglatinize_word(word)}
        new_string.join(' ')
    end

    def piglatinize_word(word)
        vowels = ["a", "e", "i", "o", "u", "y"]
        first_letter = word.downcase[0]

        word.reverse

        if vowels.include?(first_letter)
            "#{word}way"
        else
            consonants = []
            consonants << word[0]

            if !vowels.include?(word[1])
                consonants << word[1]
                if !vowels.include?(word[2])
                    consonants << word[2]
                end
            end
            word[consonants.length..-1] + consonants.join + "ay"
        end
    end
end