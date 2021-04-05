class PigLatinizer #name of class

    def piglatinize(user_phrase) #takes in the argument 
        split_phrase = user_phrase.split #seperates the word into individual letters 
        split_phrase.map do |word| #uses Map to choose each letter in the word 
            if (/[aeiouAEIOU]/).match?(word[0]) #if it is a vowel and it matches the first portion of the array then we add "way" to the end of the word 
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

