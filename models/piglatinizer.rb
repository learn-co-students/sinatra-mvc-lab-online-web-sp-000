class PigLatinizer
    WAY = "way"
    AY = "ay"
    SPACE = " "
   
    def initialize()

    end
   
    def piglatinize(user_text)
        words = user_text.split(" ");
        pig_latin_words = ""
        count = 0
        words.each do | word |
            if word.start_with?('a','e','i','o','u','A','E','I','O','U') 
                pig_word = convert_to_pig_latin_vowel_first(word)
            else
                consonants = ""
                pig_word = convert_to_pig_latin_consonant_first(word, consonants)
            end
            pig_latin_words << pig_word
            if (count < words.size - 1) 
                pig_latin_words << SPACE
            end
            count = count + 1
        end
        puts pig_latin_words
        pig_latin_words
    end

    def convert_to_pig_latin_vowel_first(word)
        word + WAY
    end

    def convert_to_pig_latin_consonant_first(word, consonants)
        if !word.start_with?('a','e','i','o','u') 
            consonants << word[0]
            new_word = convert_to_pig_latin_consonant_first(word[1, word.size - 1], consonants)
        else
            new_word = word + consonants + AY
        end
        new_word
    end

  end