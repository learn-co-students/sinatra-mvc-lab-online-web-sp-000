class PigLatinizer
    attr_accessor :words

    def piglatinize(words)
        if !words.include?(" ")
            if words.match? /\A[aeiouAEIOU]/
                words + "way"
            else
                index=words.index /[aeoui]/
                words[index..-1]+words[0,index]+"ay"
            end
        else 
            words.split(" ").map do |word|
                if word.match? /\A[aeiouAEIOU]/
                    word + "way"
                else
                    index=word.index /[aeoui]/
                    word[index..-1]+word[0,index]+"ay"
                end

            end.join(" ")
        end
    end
end