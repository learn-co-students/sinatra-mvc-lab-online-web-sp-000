class PigLatinizer
  # def initialize
  #
  # end
def change_word(str)
  # Vowels to consider
 vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

 # Special cases to consider
 two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
 three_letter_consonants = ["thr", "sch", "squ"]

 # Seperate each word from the phrase given
 words = str.split(" ")

 #Location for processed words
 result = [];

 if str.length == 1
   return str + "way"
 end

 words.each do |word|
     if vowels.include? word[0]
         # result.push word << 'ay'
                  result.push word = word + "way"

     else
         if three_letter_consonants.include? word[0] + word[1] + word[2]
             first_three_letters = word.slice!(0,3)
             result.push word << first_three_letters << 'ay'

         elsif  two_letter_consonants.include? word[0] + word[1]
             first_two_letters = word.slice!(0,2)
             result.push word << first_two_letters << 'ay'

         else
             first_letter = word.slice!(0)
             result.push word << first_letter << 'ay'
         end

     end
  end
  return result.join(" ")
end

def change_sentence(input)
  input.split.collect { |str|
    change_word(str) }.join(" ")
end

def piglatinize(input)
  if input.split(" ").length == 1
    change_word(input)
  else
    change_sentence(input)
  end
end

end
