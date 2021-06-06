
class PigLatinizer
    attr_accessor :phrase

    def initialize(phrase = nil)
        @phrase = phrase
    end

    def piglatinize(phrase)
        words = phrase.split(" ")
        translated_phrase = []
        words.each do |word|

            letters = word
            consonants = []

            if word.downcase.start_with?('a','e','i','o','u') #add 'way' to end of word
                translated_word = word + "way"
            else
                while not letters.downcase.start_with?('a','e','i','o','u')
                    consonants << letters[0]
                    letters = letters[1..-1]
                end

                translated_word = "#{letters}" + "#{consonants.join}" + "ay"
            end

                translated_phrase << translated_word
            end

        translated_phrase.join(" ")
    end


end