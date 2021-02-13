class PigLatinizer
   
    def initialize()
    end
   
    def piglatinize(text)
        words_arr = text.split(" ")
        pigLatinized = words_arr.collect do |word|
            index = 0
            while(!word[index].match?(/[aeiouAEIOU]/))
                index+=1
            end
            word_arr = word.split("")
            word_arr = (word_arr[index, word_arr.length]<< word_arr[0,index]).flatten
            word = word_arr.join
            if (index == 0)
                word << "way"
            else
                word << "ay"
            end
        end
        pigLatinized.join(" ")
    end

end