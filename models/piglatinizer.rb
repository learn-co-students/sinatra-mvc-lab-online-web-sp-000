require 'pry'
class PigLatinizer

    def piglatinize(words)
        array = words.split(" ")
        string = array.map { |word| piglatinize_word(word) }
        string.join(" ")
    end

    private

    def piglatinize_word(word)
        first_letter = word[0].downcase

        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"
        else
            consonants = []
            consonants << word[0]
                if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                    consonants << word[1]

                    if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                        consonants << word[2]
                    end
                end
             "#{word[consonants.length..-1] + consonants.join + "ay"}"
          end
      end
      # binding.pry
end
