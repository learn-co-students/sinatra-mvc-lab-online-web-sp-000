class PigLatinizer

    def piglatinize(text)
        arr1 = text.split(" ")
        piglatizedarray = arr1.collect do |word|
            consonants = word.match(/\A[^aeiouAEIOU]*/)[0]
            if consonants == ""
                word+"way"
            else 
                word.slice!(consonants)
                word+consonants+"ay"
            end
        end
        piglatizedarray.join(" ")
    end
end