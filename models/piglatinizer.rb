require 'pry'
class PigLatinizer
    

    # def piglatinize(word)
    #     vowels = %w{a e i o u}
    #     word.gsub(/(\A|\s)\w+/) do |str|
    #             str.strip!
    #         while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
    #             str += str[0]
    #             str = str[1..-1]
    #         end
    #         str  = ' ' + str + 'ay'
    #     end.strip
    # end

    def piglatinize(input_str)
        input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
      end
    
      def consonant?(char)
        !char.match(/[aAeEiIoOuU]/)
      end
    
      def piglatinize_word(word)
        # word starts with vowel
        if !consonant?(word[0])
          word = word + "w"
        # word starts with 3 consonants
        elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
          word = word.slice(3..-1) + word.slice(0,3)
        # word starts with 2 consonants
        elsif consonant?(word[0]) && consonant?(word[1])
          word = word.slice(2..-1) + word.slice(0,2)
        # word starts with 1 consonant
        else
          word = word.slice(1..-1) + word.slice(0)
        end
        word << "ay"
      end
    
      def piglatinize_sentence(sentence)
        sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
      end  
    
    
    
end