require 'pry'

class PigLatinizer
    def piglatinize(phrase)
        phrase_arr = phrase.split(" ")
        pig_latin_word_arr = phrase_arr.map do |word|
            piglatinizeword(word)
        end
        pig_latin_word_arr.join(" ")
    end

    def piglatinizeword(word)
        first_vowel = word.scan(/[aeiouAEIOU]/).first
        word_arr = word.split("")
        moved_letters = []
        if first_vowel != word_arr.first
            word_arr.each do |letter|
                if letter == first_vowel
                    break
                else
                    moved_letters << letter
                end
            end
            moved_letters.count.times{word_arr.shift}
            pig_latin_word = (word_arr << moved_letters).flatten.join("") << "ay"
        else
            pig_latin_word = word_arr.join("") << "way"
        end
        pig_latin_word
    end
end