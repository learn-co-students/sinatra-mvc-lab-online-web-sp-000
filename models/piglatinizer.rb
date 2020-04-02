# take in string
# split into words
# for each word, if starts with vowel, append way to end of word. 
# if starts with consonant, move to next letter until vowel. Then take consonant block and add it to end of word, then add ay. 

class PigLatinizer
    
    def piglatinize(text)
        if text.include?(" ")
            latinized = ""
            str = ""
            words = text.split(' ')
            words.each do |word|
                if word == words[-1]
                    latinized += piglatinizeaword(word)
                else 
                    latinized += piglatinizeaword(word) + " "
                end 
            end
            latinized
        else
            str = ""
            words = text.split(' ')
            words.each do |word|
                latinized = piglatinizeaword(word)
                str += latinized
            end
            return str
        end 
    end
    
    def isvowel?(letter)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        counter = 0
        vowels.each do |vowel|
            if vowel == letter 
                counter += 1
            end 
        end 
        if counter == 0 
            false
        elsif counter > 0 
            true 
        end 
    end
    
    def isconsonant?(letter)
        consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
        counter = 0
        consonants.each do |consonant|
            if consonant == letter 
                counter += 1
            end 
        end 
        if counter == 0 
            false
        elsif counter > 0 
            true 
        end      
    end

    def piglatinizeaword(word)
        working_word = word
        count = 0
        str = ""
        array = word.split(//)
        starting_letter = array[0]
        if isvowel?(starting_letter)
            word += "way"
            return word
        else
            array.each do |letter|
                if isvowel?(letter)
                    break
                else
                    str += letter 
                end 
            end
            split_value = str.size
            consonants_for_end_of_array = array[0...split_value]
            rest_of_word = array[split_value...]
            final_pig_array = rest_of_word + consonants_for_end_of_array
            joined = final_pig_array.join
            joined += "ay"
            joined
        end
    end

end