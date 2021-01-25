require 'pry'
class PigLatinizer

    def initialize(user_phrase)
        @user_phrase = user_phrase
    end

    def pig_latin(user_phrase)
        if /^[aeiou]/i.match(user_phrase)
            "#{user_phrase}way"
        else
            parts = text.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
        end
    end
end