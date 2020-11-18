require 'pry'
class PigLatinizer

    def piglatinize(words)
        sentence = words.split(" ")
        pig_sentence = []
        sentence.each do |word|
            #with each word, apply the pig latinizer
            letters = word.split(//)
                if letters[0].match(/[^aeiouAEIOU]/) && letters[1].match(/[aeouiAEIOU]/)
                    pig = letters.shift
                    letters.push(pig, "a", "y") 
                    pig_sentence << letters.join
                elsif letters[0].match(/[^aeiouAEIOU]/) && letters[1].match(/[^aeiouAEIOU]/) && letters[2].match(/[^aeiouAEIOU]/)
                    pig = letters.shift(3)
                    letters.push(pig, "a", "y") 
                    pig_sentence << letters.join
                elsif letters[0].match(/[^aeiouAEIOU]/) && letters[1].match(/[^aeiouAEIOU]/)
                    pig = letters.shift(2)
                    letters.push(pig, "a", "y") 
                    pig_sentence << letters.join
                elsif letters[0].match(/[aeiouAEIOU]/)
                    letters.push("w", "a", "y")
                    pig_sentence << letters.join
                end
                
        end 
        pig_sentence.join(" ")
    end

end 