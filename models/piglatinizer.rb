class PigLatinizer

    def piglatinize(input_str)
        output = []
        input_str.split(" ").each do |word|
            output << piglatinize_word(word)
        end
        output.join(' ')
    end

    def consonant?(char)
        !char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        #if it begins with consonant
        if consonant?(word[0])
        
            # then find first vowel
            pos = word.match(/[aAeEiIoOuU]/).begin(0)
            #split it at first vowel
            word[pos,word.length] + word[0, pos] + "ay"
            #move all before first vowel to the end of the word
            #add -ay to end of word after consonants from beginning
        else
            word + "way"
        end
        #else it starts with a vowel add -way to end of word
    
    end

   

end