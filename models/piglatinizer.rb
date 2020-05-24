class PigLatinizer

    attr_accessor :original

    def piglatinize(text)
        @original = text
        list = @original.split(" ").map {|word| piglatinize_word(word)}
        list.join(" ")
    end

    def piglatinize_word(word)

        first = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first)
            word = word + "way"
        else
            parts = word.split(/([aeiouAEIOU].*)/)
            new_word = parts[1] + parts[0] + "ay"
        end

    end


end