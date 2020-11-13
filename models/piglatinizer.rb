class PigLatinizer 

    def piglatinize(user_phrase)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
        consonants = alphabet - vowels

        piglatinized_word = []
        input = user_phrase.split(' ') 
          input.each do |word|
              if word.length < 2
                piglatinized_word << word + "way" 
              elsif vowels.include?(word[0])
                piglatinized_word <<  word + "way"
              elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                piglatinized_word <<  word[3..-1] + word[0..2] + 'ay'
              elsif consonants.include?(word[0]) && consonants.include?(word[1])
                piglatinized_word <<  word[2..-1] + word[0..1] + 'ay'
              elsif consonants.include?(word[0])
                piglatinized_word <<  word[1..-1] + word[0] + 'ay'
              else 
                piglatinized_word <<  word + '?'
              end
          end 
        piglatinized_word.join(', ').gsub(/,/, '')
    end

end 