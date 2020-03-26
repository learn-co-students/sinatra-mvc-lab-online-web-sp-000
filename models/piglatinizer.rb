class PigLatinizer
    

    def piglatinize(text)
        words = text.split(" ")
        words.collect do |word|
            if word.start_with?(/[aeiouAEIOU]/)
              word + "way"
            else
              consonant = word.split(/[aeiou]/)[0]
              word[consonant.length..-1] + consonant + "ay"
            end
        end.join(" ")
    end

end