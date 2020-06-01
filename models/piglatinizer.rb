class PigLatinizer

    def initialize
    end

    def piglatinize(text)
        #split text into individual words
        words = text.split(" ")
        #create a container for piglatinized words
        pig_latin_sentence = []
        
        for word in words
            first_vowel = word.downcase.index(/[aeiou]/)
            if first_vowel > 0
                len = word.length
                pig_latin_sentence << word[first_vowel..len-1] + word[0..first_vowel-1] + "ay"
            else
                pig_latin_sentence << word + "way"
            end
        end

        #join the words
        pig_latin_sentence.join(" ")
    end    
end
        