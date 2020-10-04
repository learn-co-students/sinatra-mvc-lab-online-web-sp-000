class PigLatinizer

    def piglatinize (input)
        input.split.collect {|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word (word)
        if word[0].match?(/[aeiouAEIOU]/)
            pigged = word + "way"
        else
            first_vowel = word.match(/[aeiouAEIOU]/)
            i = word.index(first_vowel.to_s)

            pigged = word[i..] + word[0..i-1] + "ay"
        end
    end
    
end