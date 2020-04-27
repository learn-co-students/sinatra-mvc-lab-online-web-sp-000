class PigLatinizer

    attr_reader :text
   
    def initialize
    end
    
    def piglatinize(text)
        text.split(" ").map {|word|
            piglatinize_word(word)
        }.join(" ")
    end

    def piglatinize_word(word)
        return_word = ""

        word_array = word.split("")
        
        if(!is_consonant(word_array.first))
            return_word = word_array.join() + "way"
        else
            vowel_found = false
            beg = ""
            word_array.each {|letter|
                if(is_consonant(letter) && vowel_found == false)
                    beg += letter
                else
                    vowel_found = true
                end
            }
            return_word = word_array[beg.length, word_array.length - 1].join() + beg + "ay"
        end

        return_word
    end

    def is_consonant(letter)
        letter_lower = letter.downcase
        if(letter_lower != "a" && letter_lower != "e" && letter_lower != "i" && letter_lower != "o" && letter_lower != "u")
            true
        else
            false
        end
    end
    
  end