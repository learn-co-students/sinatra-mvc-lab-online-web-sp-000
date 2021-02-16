class PigLatinizer
    
    def split_words(input)
        @word_array = input.split(" ")
    end

    def begins_vowel?(word)
        word = word.downcase
        if ["a", "e", "i", "o", "u"].include?(word[0]) 
            true
        end
    end

    def piglatinize(input)
        split_words(input)
        translated = @word_array.map do |word|
            if begins_vowel?(word)
                word + "way"
            else
                word.split(/([aeiou].*)/).rotate.join("")+"ay"
            end
        end
        translated.join(" ")
    end
end