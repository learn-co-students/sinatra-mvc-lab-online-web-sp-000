class PigLatinizer

    def vowel(char)
        vowels = ['a','A','e','E','i','I','o','O','u','U']    
        (vowels.find{|v| char == v}) != nil ? true : false
    end 

    def consonant(char)
        vowel(char) == false   
    end 

    def piglatinize_help(word)
        consonant_ending = 'ay'
        vowel_ending = 'way'
        if vowel(word[0]) == true 
            word + vowel_ending
        else 
            if consonant(word[0]) && consonant(word[1]) && consonant(word[2])
                word = word.slice(3..-1) + word.slice(0,3)
            elsif consonant(word[0]) && consonant(word[1])
                word = word.slice(2..-1) + word.slice(0,2)
            elsif consonant(word[0])
                word = word.slice(1..-1) + word.slice(0)
            end 
            word + consonant_ending
        end 
       
    end

    def piglatinize(word)
        word_array = word.split(' ')
        word_array.map{|ele| piglatinize_help(ele)}.join(' ')
    end 
    
end 




    