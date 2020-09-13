class PigLatinizer

    attr_reader :text

    def piglatinize(text)
        @words = text.split
        phrase = ""
        @words.each do |word|
            if word.downcase.index(/[aeiou]/) == 0
                phrase += word + "way "
            else
                phrase += word[word.split(/[aeiou]/)[0].size,99] + word.split(/[aeiou]/)[0] + "ay "
            end
        end
        phrase.strip
    end
end
