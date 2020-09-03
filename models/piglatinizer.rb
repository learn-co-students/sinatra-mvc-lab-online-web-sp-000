class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        @words = text.split(" ")
        vowel = ['a','A','e','E','i','I','o','O','u','U']
        @new_sentence = []
        @words.each do |word|
            if vowel.include?(word[0])
                new_word = word + "way"
                @new_sentence << new_word
            else
                #binding.pry
                if vowel.include?(word[1])
                    new_word = word[1..-1]+word[0]+"ay"
                    @new_sentence << new_word
                elsif vowel.include?(word[2])
                    new_word = word[2..-1]+word[0]+word[1] + "ay"
                    @new_sentence << new_word
                else
                    new_word = word[3..-1]+word[0]+word[1]+word[2] + "ay"
                    @new_sentence << new_word
                end
            end  
        end 
        @new_sentence.join(" ")
    end
end