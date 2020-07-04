class PigLatinizer
    attr_accessor :text
   

    def piglatinize(text)
        @text = text
        
        arr1 = @text.split(" ")
        arr1 = arr1.map do |x|
            x.downcase
            pft = PigLatinizer.prefix_test(x)
            if pft != 0
                x.split("").rotate(pft).join("") + "ay"    
            else
            x + "way"
            end

        end
        
        arr1.join(" ")
    end

    def self.prefix_test(word)
        word = word.downcase
        arr = ["a","e","i","o","u"]
        arr1 = word.split("")
        arr3 = []
        arr1.each_with_index do |x, i|
            if arr.include?(x)
                arr3 << i 
            end
        end
        
      arr3[0]
    end
end



#iterate over each letter
#how many characters until first vowel
#if greater than or equal to two
#return the number
#else return nil