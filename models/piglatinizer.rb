class PigLatinizer
    #attr_reader :text
   
    def initialize

    end

    #def split_sentence
    #    text.split(' ')
    #end

    def pl_word(word)
        result = ""
        if word.length > 1
            first_vowel = word.index(/[aeiouAEIOU]/)
            if first_vowel == 0
                result = word
                result << "way"
            else
                result = word[first_vowel..-1]
                result << word[0..first_vowel-1]
                result << "ay"
            end
        else
            result = word
            result << "way"
        end

        result
    end

    def piglatinize(text)
        #Split sentence into array
        sentence_array = text.split(' ')
        #Loop each item through the word by word latinizer (map?)
        result_array = sentence_array.map { |word| pl_word(word) }
        #Turn result back into string (with spaces) and return
        result_array.join(" ")
    end

end
