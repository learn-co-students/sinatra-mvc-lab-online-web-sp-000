require 'pry'
class PigLatinizer
    attr_reader :text

    def is_vowel_elsif(letter)
        if letter == "a"
          true
        elsif letter == "e"
          true
        elsif letter == "i"
          true
        elsif letter == "o"
          true
        elsif letter == "u"
          true
        elsif letter == "A"
            true
          elsif letter == "E"
            true
          elsif letter == "I"
            true
          elsif letter == "O"
            true
          elsif letter == "U"
            true
        else
          false
        end
      end

      
      
     def piglatinize(text)
        if text.scan(/\s/) != []
            # binding.pry
            word = text.split(" ")
           
        else
            letters = helper(text)
                return letters
        end           
           arr = []
           word.each do |words|
                letters = helper(words)
                arr << letters
                space = " "
                arr << space
            end
            arr.pop
           arr = arr.join
           arr
        end

    def helper(text)
        text = text.split(//)
        if is_vowel_elsif(text[0])
            text = text.join
            text = text + "way"
            return text
        end
            if text.length > 1
            while is_vowel_elsif(text[0]) == false
                text << text[0]
                text.shift
            end
        end
        text = text.join
        # if text[-1].scan(/aeiouAEIOU/) != []
        #     text = text + "way"
        if text.length == 1
            text = text + "way"
        else
            text = text + "ay"
        end
        text
    end 
end