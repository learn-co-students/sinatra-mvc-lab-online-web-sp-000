class PigLatinizer

    def initialize
    end

    def piglatinize(words)
      vowels=['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U', 'y', 'Y']

        words.split(" ").map do |word|
      if vowels.include?(word[0]) || word.length == 1
        word+"way"
      else
        consonants='' 
        letters=word.split("")
        until vowels.include?(letters[0]) || letters.length <= 0 do
          consonants<<letters.shift
        end
          letters.join("") + consonants + "ay"
        end
      end.join(" ")
    end

end