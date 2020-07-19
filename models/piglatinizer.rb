class PigLatinizer 
    def piglatinize(user_input)
        words = user_input.split(" ")
        translated_words = []

        words.each do |word|
            new_word = ""
            if "aeiouy".include? word.downcase.slice(0)
                new_word = "#{word}way"
            else
                suffix = []
                letters = word.split("")

                while letters[0].downcase =~ /[qwrtpsdfghjklzxcvbnm]/
                    letters << letters.shift()
                end

                new_word = "#{letters.join("")}ay"                
            end
            translated_words << new_word
        end
        translated_words.join(" ")        
    end
end