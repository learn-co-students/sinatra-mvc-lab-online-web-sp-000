class PigLatinizer

    def piglatinize(string)
        word_array = string.split(" ")
        translated = word_array.collect {|word| translate(word)}
        translated.join(" ")
    end 

    def translate(word)
        if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
            word << "way"
            return word
        else
            parts = word.split(/([aeiou].*)/)
            word = parts[1] + parts[0] + "ay"
            return word
        end
    end

end 
