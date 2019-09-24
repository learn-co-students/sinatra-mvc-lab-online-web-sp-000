class PigLatinizer

    attr_accessor :text

    def initialize
        @text = text
    end

    def piglatinize(text)
        a = text.split
        b = a.map {|text| piglatinize_word(text)}
        b.join(" ")
    end

    def piglatinize_word(text)  
        first_letter = text[0]
            if ["a", "e", "i", "o", "u"].include?(first_letter)
                "#{text}way"
            elsif
                consonants = []
                consonants << text[0]
            if ["a", "e", "i", "o", "u"].include?(text[1]) == false
                    consonants << text[1]
            if ["a", "e", "i", "o", "u"].include?(text[2]) == false
                      consonants << text[2]
                end
            end
            end
        "#{text[consonants.length..-1]}#{first_letter}ay"
    end
end