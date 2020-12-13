require 'pry'

class PigLatinizer

    attr_reader :text

    def initialize
    end
    
    def piglatinize(text)
        @array_of_words = text.split(" ")
        lead = ""
        tail = ""
        revised_word = ""
        bigCount = 0
        @revised_string = ""
        i = @array_of_words.length 
        @array_of_words.each do | word |
            lead = word[0]
            if (lead == 'a'|| lead == 'e' || lead == 'i' || lead == 'o' || lead == 'u' || lead == 'A'|| lead == 'E' || lead == 'I' || lead == 'O' || lead == 'U')
                revised_word = word + "way"
                i = i - 1
            else
                count = 1
                tempArray = word.split("")
                consonant = true
                while consonant
                  #  binding.pry
                    if (tempArray[count] != "a" && tempArray[count] != "e" && tempArray[count] != "i" && tempArray[count] != "o" && tempArray[count] != "u")
                        lead = lead + tempArray[count]
                        count = count + 1
                    else
                        consonant = false
                    end
                    bigCount = count
                end
                tail = lead + "ay"
                revised_word = word + tail
                revised_word = revised_word[bigCount..-1]
                i = i - 1
            end
            @revised_string = @revised_string + revised_word
            if (i > 0)
                @revised_string = @revised_string + " "
            end
        end
        return @revised_string
    end

end