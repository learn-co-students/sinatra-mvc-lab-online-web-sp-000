class PigLatinizer
    attr_reader :phrase

    def piglatinize(phrase)
        
        translated_phrase = []

        words = phrase.split(" ")

        words.each do |word|
            if word.start_with?("A","a","E","e","I","i","O","o","U","u")
                new_word = "#{word}way"
                translated_phrase << new_word
            else
                consonant_array = word.partition(/\A[^aeiou]*/i)
                new_word = "#{consonant_array[2]}#{consonant_array[1]}ay"
                translated_phrase << new_word
            end
        end

        translated_phrase.join(" ")
    end



end