class PigLatinizer
    def piglatinize(string)
        array = string.split
        new_array = []

        array.each do |word|
            first_letter = word.split("")[0]
            second_letter = word.split("")[1]
            third_letter = word.split("")[2]

            if consonant?(first_letter) && !consonant?(second_letter)
                new_word = word_without_first_letter(word).split("").push(first_letter+"ay").join
                new_array << new_word
            elsif word.length == 1
                new_word = word+"way"
                new_array << new_word
            elsif consonant?(first_letter) && consonant?(second_letter) && !consonant?(third_letter)
                new_word = word_without_first_two_letters(word).split("").push(first_letter).push(second_letter+"ay").join
                new_array << new_word
            elsif !consonant?(first_letter) && consonant?(second_letter)
                new_word = word+"way"
                new_array << new_word
            elsif consonant?(first_letter) && consonant?(second_letter) && consonant?(third_letter)
                new_word = word_without_first_three_letters(word).split("").push(first_letter).push(second_letter).push(third_letter+"ay").join
                new_array << new_word
            elsif !consonant?(first_letter) && !consonant?(second_letter)
                new_word = word+"way"
                new_array << new_word
            end
        end
        new_array.join(" ")
    end

    def consonant?(letter)
        letter.downcase == letter.downcase.scan(/[^aeiou]/).join
    end

    def word_without_first_letter(word)
        array = word.split("")
        array.delete_at(0)
        array.join
    end

    def word_without_first_two_letters(word)
        array = word.split("")
        array.delete_at(0)
        array.delete_at(0)
        array.join
    end

    def word_without_first_three_letters(word)
        array = word.split("")
        array.delete_at(0)
        array.delete_at(0)
        array.delete_at(0)
        array.join
    end
end
