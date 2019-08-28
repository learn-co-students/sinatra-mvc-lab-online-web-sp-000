require 'pry'

class PigLatinizer

    def piglatinize(phrase)
        @array = []
        new_phrase = phrase.to_s.split(' ')
        new_phrase.each do |w|
            if w.match(/^[aeiou]/i)
                @array << (w + "way")
            else
                w_array = w.split(/(^[^aeiou]*)/)
                w_array.delete_at(0)
                @array << w_array[1] + (w_array[0] + "ay")
            end
        end
        @piglatin = @array.join(" ")
        @piglatin
    end

    def latin
        @piglatin
    end

end