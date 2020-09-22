class PigLatinizer

attr_accessor :text

def initialize
    @text = text
end

def piglatinize(text)
    words = text.split
    converted_text = []

    words.each { |word|
        if word =~ /\A[aeiou]/i
            converted_text << word + "way"
        else
            prefix = word[/^[^aeiou]+/i]
            base = word.delete_prefix(prefix)
            converted_text << base + prefix + "ay"
        end
    }
    converted_text.join(" ")

end


end