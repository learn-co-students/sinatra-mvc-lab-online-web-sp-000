class PigLatinizer
    def vowel(letter)
        if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
          true
        else
          false
        end
      end

     def piglatinize(word)
       words = word.split(" ")
        pigLatinizer_words  = words.map{|w|     
            splited_w = w.split("") 
            if vowel(splited_w.first.downcase)
               splited_w << "way"
            else
                until vowel(splited_w.first)
                   a = splited_w.shift
                   splited_w << a
                end
                splited_w << "ay" 
            end

            splited_w.join
        }.join(" ")
        pigLatinizer_words 
    end
    

end