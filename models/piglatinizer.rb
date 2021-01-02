class PigLatinizer

    def piglatinize_word(word)
        @word = word

        if starts_with_a_vowel? == false
            @word = @word.chars.rotate.join until starts_with_a_vowel? == true
            @word + "ay"
        else 
            word + "way"
        end 
    end 
    
def piglatinize(word)
    if word.include?(" ")
        piglatinize_sentence(word)
    else 
        piglatinize_word(word)
    end 
end 

def piglatinize_sentence(sentence)
    sentence.split(" ").map {|word| piglatinize_word(word)}.join(" ")
end 

def starts_with_a_vowel?
    @word.scan(/^[aeiou]/i).size > 0
    end 
end 
 