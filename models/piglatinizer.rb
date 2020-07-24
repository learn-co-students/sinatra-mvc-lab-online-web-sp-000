class PigLatinizer
    attr_accessor :pig_latin_input

    def initialize(input)
        self.pig_latin_input = input 
    end

    def word_separator
        seperated = convert_word(self.pig_latin_input)
        if (vowel_index(seperated) == 0)
            vowel_start(seperated)
        else
            consonant_start(seperated)
        end
    end
    
    def convert_word(input)
        input.downcase.split(//)
    end

    def join_word(input)
        input.join
    end

    def vowel_start(input)
        "#{join_word(input)}" + "way"
    end

    def consonant_start(input)
        edited_word = input
        consonant_cluster = input.shift(vowel_index(edited_word).to_i)
        "#{join_word(edited_word)}" + "#{join_word(consonant_cluster)}" + "ay"
    end

    def vowel_index(input)
        input.index{|letter| letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"}
    end
end