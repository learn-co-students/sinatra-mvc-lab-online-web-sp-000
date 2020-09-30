require 'pry'

class PigLatinizer

    def piglatinize(text)
        old_words = text.split(' ')

        new_words = old_words.map do |word|
            first_consonants = word.scan(/\A[^aeiouAEIOU]*/).first
            
            if first_consonants == ""
                word += "way"
            else
                word = word.sub(first_consonants, '') + first_consonants + 'ay'
            end
        end

        new_words.join(" ")
    end
    
end