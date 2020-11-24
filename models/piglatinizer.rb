class PigLatinizer

    def piglatinize(text)        
        # array of words
        words = text.split(' ')

        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

        # iterate over words
        pl_words = words.collect do |word|

            # if word starts with a vowel, add 'way'
            if vowels.include?(word[0])
                word += 'way'
            
            # if a consonant
            else
                # until the first letter is a vowel
                until vowels.include?(word[0])
                    #shift last letter to end
                    word = word[1..-1] + word[0]
                end

                # then add 'ay'
                word += 'ay'
            end
        end

        #rejoin the pig latinised words into a string
        pl_words = pl_words.join(' ')        
    end
end