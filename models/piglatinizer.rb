class PigLatinizer

    def piglatinize(text)
    words = text.split(" ")
    words.map! do |word|
      letters = word.split("")
      letters.keep_if {|letter| letter != "."}
        #if %w[and an in].include?(word)
           # word
        if vowel?(letters[0])
            letters << "way"
        elsif letters.size > 1
            until vowel?(letters[0]) 
            letters << letters.shift
            end
            letters  << "ay"
        end
      letters.join
    end
    words.join(" ")
    end
  
    def vowel?(letter)
      letter.downcase
      letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u" || letter == "O" || letter == "E" || letter == "A" || letter == "I" || letter == "U"
    end
end