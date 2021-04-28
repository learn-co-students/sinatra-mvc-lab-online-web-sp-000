class PigLatinizer
    def piglatinize(input)
        if input.split(" ").length == 1
            pl_single_word(input)
        else 
            input.split.collect { |word| pl_single_word(word) }.join(" ")
        end
    end

    private

    def pl_single_word(word)
        if word[0].match(/[aAeEiIoOuU]/)
            word = word + "w"
        elsif !(word[0].match(/[aAeEiIoOuU]/)) && !(word[1].match(/[aAeEiIoOuU]/)) && !(word[2].match(/[aAeEiIoOuU]/))
            word = word.slice(3..-1) + word.slice(0,3)
        elsif !(word[0].match(/[aAeEiIoOuU]/)) && !(word[1].match(/[aAeEiIoOuU]/))
            word = word.slice(2..-1) + word.slice(0,2)
        else
            word = word.slice(1..-1) +word.slice(0)
        end
        word << "ay"
    end
end