class PigLatinizer
    def piglatinize(user_phrase)
        pig_array = []
        user_phrase_array = user_phrase.split(" ")
        user_phrase_array.each do |word|
        first_vowel = word.scan(/[aeiouAEIOU]/).first
        word_array = word.split(first_vowel, 2)
        if word_array[0] == ""
            pig_latin_word = [first_vowel, word_array[1], "way"].join
        else  
            pig_latin_word = [first_vowel, word_array[1], word_array[0], "ay"].join
        end
        pig_array << pig_latin_word
    end
    pig_array.join(" ")
   end


end 

