class PigLatinizer

    def piglatinize(user_phrase)
        split_phrase = user_phrase.split
        split_phrase.map do |word|
            if (/[aeiouAEIOU]/).match?(word[0])
                word+'way'
            else
                split_word = word.split('')
                until (/[aeiouAEIOU]/).match?(split_word[0])
                    split_word.rotate!
                end
            split_word.join+'ay'
            end
        end.join(' ')
    end



end









def piglatinize(user_phrase)
    split_phrase = user_phrase.split
    split_phrase.map do |word|
        if (/[aeiouAEIOU]/).match?(word[0])
            word+'way'
        else
            split_word = word.split('')
            until (/[aeiouAEIOU]/).match?(split_word[0])
                split_word.rotate!
            end
        split_word.join+'ay'
        end
    end
end













