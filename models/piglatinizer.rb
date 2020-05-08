class PigLatinizer

    def piglatinize(text) 
        words = text.split(" ")
        if words.length == 1
            piglatinize_word(text)
        else 
            sentence = []
            words.each do |word| 
                sentence << piglatinize_word(word)
            end
            sentence.join(" ")
        end
    end 

    def piglatinize_word(word)
        # if begins with consonant(s), move consonants to back and add "ay"
        if word.downcase.start_with?(/[bcdfghjklmnpqrstvwxyz]+/)
            letters = word.split('')
            count = 0 
            letters.each_with_index do |letter, index|
                if letter.match(/[aeoui]/)
                    count = index 
                    break 
                end
            end
            consonants = word.slice!(0, count)
            new_word = word + consonants + "ay"

        # if begins with vowel, add "way"
        else 
            new_word = word + "way"
        end
        new_word
    end

end