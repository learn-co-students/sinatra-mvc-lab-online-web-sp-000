class PigLatinizer

    def piglatinize(user_input)
        words = user_input.split
        pig_latin = words.map do |word|
                        if word[0].match(/[aeiou]/i)
                            word += 'way'
                        else
                            while !word[0].match(/[aeiou]/i) do
                                word += word[0]
                                word = word.slice(1, word.length) 
                            end
                            word += 'ay'
                        end
                    end
        pig_latin.join(' ')
    end
end