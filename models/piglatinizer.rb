class PigLatinizer
    def piglatinize(text)
        words=text.split(" ")
        phrase = ""
        words.each do |word|
            # binding.pry
            case
            when word.downcase.index(/[aeoui]/)==0
                # if word.size=1
                #     phrase += word + "way"
                # else
                    phrase += word + "way "
                # end
            else
                phrase += word[word.split(/[aeoui]/)[0].size,99] + word.split(/[aeoui]/)[0] + "ay "
            end
        end
        phrase.strip
    end
end