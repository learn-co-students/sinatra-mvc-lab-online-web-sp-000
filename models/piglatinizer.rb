class PigLatinizer

    def piglatinize(phrase)
        pig_latin_word_array = []
        phrase_array = phrase.split(" ")
        phrase_array.each do |word|
            first_vowel = word.scan(/[aeiouAEIOU]/).first
            word_array = word.split(first_vowel,2)
            if word_array[0] == ""
                pig_latin_word = [first_vowel, word_array[1], "way"].join
            else
                pig_latin_word = [first_vowel, word_array[1], word_array[0], "ay"].join
            end
            pig_latin_word_array << pig_latin_word
        end
        pig_latin_word_array.join(" ")
    end

end