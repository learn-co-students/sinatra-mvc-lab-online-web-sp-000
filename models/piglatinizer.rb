
class PigLatinizer 
    attr_accessor :text 

    def piglatinize(text)
        @text = text
        pig_lat_phrase = []
        split_words.each do |word|
            if starting_vowel?(word)
                pig_lat_phrase << "#{word + 'way'}"
            else 
                pig_lat_phrase << "#{cons_processor(word) + 'ay'}"
            end
        end
        pig_lat_phrase.join(' ')
    end 

    def split_words
        @text.split(' ')
    end

    def starting_vowel?(word)
        if word[0].downcase.scan(/[aeoui]/)[0]
            true 
        else 
            false 
        end
    end

    def cons_processor(word)
        word_array = word.split('')
        until word_array[0].scan(/[aeoui]/)[0] do 
            word_array << word_array.shift 
        end 
        word_array.join
    end

end 