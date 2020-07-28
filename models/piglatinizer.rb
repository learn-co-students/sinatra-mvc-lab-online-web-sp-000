class PigLatinizer

    def initialize()

    end

    def piglatinize(phrase)
        words = phrase.split(" ")
        new_words = []
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        words.each do |word|
            if vowels.include?(word[0])
                word = word + "way"
            else
                while !vowels.include?(word[0])
                    word += word[0]
                    word = word.slice(1, word.length)
                end
                word = word + "ay"
            end
            new_words << word
        end
        new_phrase = new_words.join(" ")
        return new_phrase
    end

end