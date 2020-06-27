class PigLatinizer

def piglatinize(word)
  pig(word)
end

def to_pig_latin(string)
  pig(string)
end

def pig(new_word)
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  vowels = %w[a e i o u] + %w[A E I O U]
  consonants = alpha - vowels

  array = []
    input = new_word.split(' ')
      input.each do |word|
          if word.length < 2
             array << word + "way"
          elsif vowels.include?(word[0])
             array <<  word + "way"
          elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
             array <<  word[3..-1] + word[0..2] + 'ay'
          elsif consonants.include?(word[0]) && consonants.include?(word[1])
             array <<  word[2..-1] + word[0..1] + 'ay'
          elsif consonants.include?(word[0])
             array <<  word[1..-1] + word[0] + 'ay'
          else
             array <<  word + '?'
          end
      end
  array.join(', ').gsub(/,/, '')
    end

end
