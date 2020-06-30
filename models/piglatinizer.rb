class PigLatinizer
    def piglatinize(words)
        @words = words.split(" ")
        #just turn the word into a pig latin word
        pig = '' #new string
        new_sent = []
        vowels = %w[a e i o u A E I O U]
        #begins with a vowel
        @words.each do |word|
            if vowels.include?(word[0])
                pig = word + 'way'
                new_sent << pig
            else
                i = 0
            
                word.split("").each do |char|
                    if vowels.include?(char)
                        pig = word[i..-1] + word[0..i-1] + 'ay'
                        new_sent << pig
                        break
                    end
                    i += 1
                end
                
            end
        end
        new_sent = new_sent.join(" ")
        return new_sent
    end

    

end