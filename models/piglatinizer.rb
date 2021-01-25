require 'pry'
class PigLatinizer
    attr_reader :text

    def initialize(text)
        @text
    end

    def pig_latin(text)
        text += ( (text[0] =~ /[aeiou]/).nil? ? "" : "w")
        text.gsub(/([^aeiou]?)([aeiou])(\w+)(.?)/, '\2\3\1\4ay')
    end
end