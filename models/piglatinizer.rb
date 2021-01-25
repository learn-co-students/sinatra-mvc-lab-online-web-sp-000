require 'pry'
class PigLatinizer

    def initialize(text)
        @text = text
    end

    def pig_latin(text)
        if /^[aeiou]/i.match(text)
            "#{text}way"
        else
            parts = text.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
        end
    end
end