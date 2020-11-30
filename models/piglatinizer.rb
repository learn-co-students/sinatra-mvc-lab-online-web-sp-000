require 'pry'
class PigLatinizer

    def piglatinize(word)
        first_letter = word[0].downcase

        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"

        else
            x = []
            x << word[0]
              if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                x << word[1]

                if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                  x << word[2]
                end

              end
            "#{word[x.length..-1] + x.join + "ay"}"
          end 
        end 

        def pig_latin_split(user_phrase)
            x = user_phrase.split(" ")
            y = x.map{|phrase| piglatinize(phrase)}
            y.join(' ')
            # binding.pry
            
        end 

    
end 

