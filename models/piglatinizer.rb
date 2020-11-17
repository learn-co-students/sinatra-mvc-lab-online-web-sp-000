class PigLatinizer
    
    def piglatinize(words)
        split_array = words.split

        output = split_array.map do |word|
            if /\A[^aeiouAEIOU]+/.match(word) != nil
                consonant = /\A[^aeiou]+/.match(word)[0]
                word.slice!(consonant)
                pig = word + consonant + "ay"
            elsif /\A[aeiouAEIOU]+/.match(word) != nil
                pig = word + "way"
            end
        end

        if output.count > 1
            output.join(" ")
        else
            output[0]
        end
    end

end