class PigLatinizer

    def piglatinize(phrase)
        words = phrase.split(" ")
        words.map do |word|
          if word.downcase.start_with?('a','e','i','o','u')
              word << 'way'
          else
            until word.downcase.start_with?('a','e','i','o','u') do
                word << word[0]
                word.slice!(0)
            end
            word << 'ay'
          end
        end
        words.join(" ")
        
       



    end   

end