class PigLatinizer 

    def piglatinize(words)
        words_array = words.split(" ")
        if words_array.count > 1
            new_words_array = words_array.map do |word|
                if 'aeiouAEIOU'.include?(word[0])
                    word = word + 'way'
                else
                    word = format_word_starts_with_consonant(word)
                end
            end
            new_words_array.join(" ")
        else
            if 'aeiouAEIOU'.include?(words_array[0][0])
                word = words_array[0] + 'way'
                return word
            else
                word = format_word_starts_with_consonant(words_array[0])
                word
            end
        end
    end
    def format_word_starts_with_consonant(word)
        word = word[1..-1] + word[0]
        while !'aeiouAEIOU'.include?(word[0])
            word = word[1..-1] + word[0]
        end
        word += 'ay'
        word
    end
end