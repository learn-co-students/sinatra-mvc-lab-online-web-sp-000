class PigLatinizer
    attr_accessor :source_phrase, :words, :result_phrase

    def fakeresult
        "hicanha"
    end

    def is_this_letter_a_vowel(letter)
        !letter.scan(/[aeouiAEIOU]/).empty?
    end

    def contain_vowels(word)
        !word.scan(/[aeouiAEIOU]/).empty?
    end

    def shiftfronttoback(arrayofletters)
        #ex: [h,e,l,l,o] becomes [e,l,l,o,h]
        letter = arrayofletters[0]
        arrayofletters << letter
        arrayofletters.shift() #this returned the deleted letter
        arrayofletters 
    end



    def latinize(word)
        anyvowel = contain_vowels(word)
        #if the word has no vowel, it might get stuck in an infinite loop, unless proper measures are taken
        #life is hard!

        firstletterisvowel = is_this_letter_a_vowel(word.split("").first)

        if firstletterisvowel #if first letter is vowel
            array = [ word ]
            array << "way"
            pigword = array.join("")
            pigword
        elsif !anyvowel #has no vowels
            array = [ word ]
            array << "ay"
            pigword = array.join("")
            pigword
 
        else #first is not vowel, move them to the end until it is a vowel
            array = word.split("")

            while !is_this_letter_a_vowel(array.first) #first not vowel
                array = shiftfronttoback(array)
                #we keep "shifting" until the array starts with vowel
                #ex: [c,h,a,t] becomes [h,a,t,c] then beomes [a,t,c,h]
            end
            array << "ay"
            pigword = array.join("")
            pigword
        end

    end

    def piglatinize(sourcephrase) 
        @source_phrase = sourcephrase
        @words = sourcephrase.split(" ")

        pigarray = @words.map do | word |
            latinize(word)
        end

        @result_phrase = pigarray.join(" ")
        #warning: doing like instance.result_phrase does not work unless you've called this result method to assign a value
        #thats why u best use this result method
    end
end
