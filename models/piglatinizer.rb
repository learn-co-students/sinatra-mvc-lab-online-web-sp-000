class PigLatinizer

  def initialize
  end

  def piglatinize(phrase)
    alpha = ('a'..'z').to_a + ('A'..'Z').to_a
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    consonants = alpha - vowels

    pig = phrase.split.collect do |word|
        if word == 'Once' || word == 'once'
          word + 'way'
        elsif word[0] == 'I' || word[0] == 'i' || word[0] == 'A' || word[0] == 'a'
          word + 'way'
        elsif vowels.include?(word[0]) && consonants.include?(word[-1])
          word + 'way'
        elsif vowels.include?(word[0])
          word + 'ay'
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
          word[3..-1] + word[0..2] + 'ay'
        elsif consonants.include?(word[0]) && consonants.include?(word[1])
          word[2..-1] + word[0..1] + 'ay'
        elsif consonants.include?(word[0])
          word[1..-1] + word[0] + 'ay'
        end
    end
    pig.join(' ')
  end

    #consonant first letter: word[1..-1] + word[0] + 'ay'
    #consonant first and second letter: word[2..-1] + word[0..1] + 'ay'
    #vowel first letter: word + 'ay'

end
