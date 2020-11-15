class PigLatinizer

    attr_accessor :phrase, :words

    def initialize
        @phrase = ""
    end

    def piglatinize(original_phrase) #instance. has @phrase.
        @new_array = []
        divide(original_phrase)
        ize(@i_words)
        @new_array.join(" ")
    end
    
    def divide(phrase)
        @i_words = phrase.split(" ")
    end

    def ize(word_array)
        word_array.each do |word|
            if word[/\b[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{1,4}/]
                const = /\b[bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXYZ]{1,4}/.match(word)[0]
                word = word.delete_prefix(const)
                @new_array << ( word << (const << "ay"))
            
            elsif word[/\b[aeiouAEIOU]/]
                @new_array << (word << "way")
            end
        end
    end

end