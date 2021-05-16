class PigLatinizer
    # attr_accessor :text

    def piglatinize(user_phrase) # parse whole text
        array_a = user_phrase.split(" ")
        array_b = array_a.map {|word| parse_word(word)}
        return array_b.join(" ")
    end

    def parse_word(word) # parse single word
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        
        if vowels.include?(word[0])
            "#{word}way"
        else
            array_letters = word.split("") # == word.chars
            first_vowel_letter = array_letters.find {|letter| vowels.include?(letter)}
            first_vowel_letter_index = word.index(first_vowel_letter)
            "#{word[first_vowel_letter_index..-1]}#{word[0...first_vowel_letter_index]}ay"
        end
    end
end