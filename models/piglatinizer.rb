class PigLatinizer
    attr_reader :words

    def initialize
    end

    def words=
        @words
    end
        
    def translate(text)
        pl = []
        if /^[aeiou]/i.match(text)
            "#{text}way"
        else
            latined = text.split(/([aeiou].*)/)
            "#{latined[1]}#{latined[0]}ay"
        end
        
    end

    def piglatinize(words)
        text = words.split(' ')
        text.map {|word| translate(word)}.join(' ')
    end

end