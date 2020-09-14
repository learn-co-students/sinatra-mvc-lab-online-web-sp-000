class PigLatinizer

    def piglatinize(words)
        piglatin = words.downcase.split(" ")
        piglatinized = []
        
            piglatin.each do |word|
                if word.start_with?(/[aeiou]/) #starts with a vowel
                 piglatin_word = "#{word}way"
                
                else #starts with consonants
                    #collect amount of consonants at start of word and save to a variable
                    consonants = word.split(/[aeiou]/).first #returns consonants from beginning of word
                    remainder = word.split(consonants)
                    formatted_remainder = remainder.join("")

                    piglatin_word = "#{formatted_remainder}" + "#{consonants}" + "ay"
                end #end of 'if' statement
            piglatinized << piglatin_word
            end #end of iteration
        piglatinized.join(" ")
        
    end    
end
