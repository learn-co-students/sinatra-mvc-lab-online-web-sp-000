class PigLatinizer

    def piglatinize(text)
        split_text = text.split(" ")
        final = split_text.collect do |word|
            consonant = ["B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","Y","V","W","X","Z"]
            vowel = ["A","E","I","O","U"]
            new_text = ""
            first_letter = word[0].upcase
            if vowel.include?(first_letter)
                new_text = word + "way"
            else
                consonant_list = []
                word.chars.each do |letter|
                    if consonant.include?(letter.upcase)
                        consonant_list << letter
                    else
                        break
                    end
                end
                word_start = ""
                if consonant_list.length > 1
                    word_start = consonant_list.join("")
                else
                    word_start = consonant_list[0]
                end
                new_text = word.delete_prefix(word_start)
                new_text += word_start
                new_text += "ay"
            end
        end
        final.join(" ")
    end
end