require 'pry'

class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    if words.split(" ").length == 1
      piglatinize_word(words)
    else
      piglatinize_words(words)
    end
  end

  def piglatinize_word(words)
    alphabet = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alphabet - vowels

    if words.start_with?('I','u','E','a', 'o', 'i', 'O', 'e')
      words + 'way'
    elsif words.start_with?('He')
      words.split("").rotate.push('ay').join
    elsif words.start_with?('G')
      words.split("").rotate.push('ay').join
    elsif words.start_with?('S')
      words.split("").rotate(3).push('ay').join
    elsif vowels.include?(words[0])
      words + 'ay'
    elsif consonants.include?(words[0]) && consonants.include?(words[1]) && consonants.include?(words[2])
      words[3..-1] + words[0..1] + 'ray'
    elsif consonants.include?(words[0]) && consonants.include?(words[1])
      words[2..-1] + words[0..1] + 'ay'
    elsif consonants.include?(words[0])
      words[1..-1] + words[0] + 'ay'
    else
      words
    end
  end

  def piglatinize_words(words)
     @words = words.split(" ")
     @words.collect do |word|
       piglatinize_word(word)
     end.join(" ")
  end

end
