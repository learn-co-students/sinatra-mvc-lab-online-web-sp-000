class PigLatinizer

    def piglatinize(phrase)
        if phrase.include?(" ")
            piglatinize_a_sentence(phrase)
        else
            piglatinize_a_word(phrase)
        end
    end

    def piglatinize_a_word(word)
        new_word = []
        
        if word.start_with?(/[aeiouAEIOU]/)
            new_word << word + 'way'
        else
            word.split("").each_with_index do |l, i|
                if !l.start_with?(/[aeiouAEIOU]/)
                    new_word << word[i]
                else
                    new_word.unshift(word[i...word.length])
                    break
                end
            end
            new_word << "ay"
        end
        new_word.join("")
    end

    def piglatinize_a_sentence(sentence)
        new_sentence = []
        
        sentence.split(" ").each do |word|
            new_sentence << piglatinize_a_word(word)
        end

        new_sentence.join(" ")
    end



end