class PigLatinizer

    def initialize(user_phrase = "")
        @user_phrase = user_phrase
        @translate_array = []
        
    end


    def piglatinize(words)
        
        @words = words.split(" ")
        #binding.pry
        if @words.length > 1 


            @words.each do  |word|
                #binding.pry
                if first_vowel?(word) == true
                    @translate_array << word + "way"
                else
                    @translate_array << consonant_count(word)
                end
            end
            @translate_array.join(" ")
        else

            if first_vowel?(words) == true 
                words + "way"
            else
                consonant_count(words)
            end

        end
    end

    def first_vowel?(word)
        @first_letter = word.split("").first
        
        if @first_letter.scan(/[aeouiAEIOU]/) == []
            false
        else
            true
        end
    end
    
    def consonant_count(word)
        @num_consonants = 0
        @word_letters = word.split("")
        @first_letter = @word_letters[0].scan(/[aeouiAEIOU]/)
        @second_letter = @word_letters[1].scan(/[aeouiAEIOU]/)
        if @word_letters[2] != nil
            @third_letter = @word_letters[2].scan(/[aeouiAEIOU]/)
        end
        if  @first_letter == [] && @second_letter == [] && @third_letter == [] 
            @num_consonants = 3
        elsif @first_letter == [] && @second_letter == [] 
            @num_consonants = 2
        elsif @first_letter == []
            @num_consonants = 1
        end

        
        @consonants = @word_letters.shift(@num_consonants).join("")
        @word_letters = word.split("")
        @new_word = @word_letters.pop(@word_letters.length - @num_consonants).push(@consonants).push("ay").join("")
        #binding.pry
        @new_word
    end
    # def piglatinize(word)
    #     @translate_piglatin = []
        
    #     @words = word.split(" ")
        

    #     if first_vowel?(word) == true && @words.length > 1
    #         @translate_piglatin << word + "way"
    #     else
    #         @translate_piglatin << consonant_count(word)
    #     end
        

    # end
end