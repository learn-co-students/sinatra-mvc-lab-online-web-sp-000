class PigLatinizer

    def piglatinize(text)
        phrase = text.split(" ")
        display_phrase = []
        phrase.each do |word|
            arr = word.partition(/[AaEeIiOoUu]/)
            arr << arr.shift
            if word.downcase.start_with?("a", "e", "i", "o", "u")
                display_phrase << arr.join + "way"
            else
                display_phrase << arr.join + "ay"
            end
        end
        display_phrase.join(" ")
    end

end