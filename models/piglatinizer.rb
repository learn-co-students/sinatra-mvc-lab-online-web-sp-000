class PigLatinizer
    attr_accessor :input
    
    def initialize()
    end

    def vowel?(letter)
        letter.downcase!
        if letter == "a" || letter == "e" || letter == "i" ||   letter == "o" || letter == "u"
            return true
        else
            return false
        end
    end

    def piglatinize(input)
        split_input = input.split(" ")

        pl_phrase = split_input.map do |word|
            v_index = 0
            word.split(//).each do |letter| 
                if vowel?(letter)     
                    break
                else
                    v_index += 1
                end
            end
            
            if v_index == 0
                "#{word}way"
            else
                "#{word[v_index.. - 1]}#{word[0..v_index - 1]}ay"
            end
            
        end
        pl_phrase.join(" ")

    end
end