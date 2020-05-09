class PigLatinizer

    # attr_accessor :text

    # def initialize(text)
    #     @text = text
    # end
    
    def piglatinize(text)
        text.split(" ").collect { |word| piglatinize_each_word(word) }.join(" ")
    end

    def piglatinize_each_word(word)            
        if word.scan(/\A[aeiou]/i).first
            word + "way"
        else
            start = word.scan(/\A[^aeiou]*/i).first
            remain = word.delete_prefix(start)
            remain + start + "ay"
        end
    end
end