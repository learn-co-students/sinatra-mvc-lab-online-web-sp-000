class PigLatinizer
    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end
    def manipulation

        arr = text.downcase.split(' ')
        vowels = ["a", "e", "i", "o", "u"]
        consonants = []
        arr.each do |word|
            if vowels.include? word[0]
                word << "way"
            elsif vowels.include?(word[1]) == false
                consonants << word[0]
                consonants << word[1]
                "#{word[1..-1] + consonants.join() + "ay"}"
            elsif vowels.include?(word[2]) == false
                consonants << word[0]
                consonants << word[1]
                consonants << word[2]
                "#{word[2..-1] + consonants.join() + "ay"}"
            end
        end
                
              
    end
   
end