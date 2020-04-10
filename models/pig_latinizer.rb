require 'pry'

class PigLatinizer
  attr_reader :word

  # def initialize(words)
  #   @words = words

  # end
  def piglatinize(word)
      # binding.pry
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
  # binding.pry
     if word.include?(" ")
       split(word).each do |word|

    #   separate.each do |word|


        elsif vowels.include?(word[0])
          word + 'way'
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && vowels.include?(word[2])
          word[2..-1] + word[0..1] + 'ay'
        elsif consonants.include?(word[0]) && vowels.include?(word[1])
          word[1..-1] + word[0] + 'ay'
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
          word[3..-1] + word[0..2] + 'ay'
        else
          word.length < 2
          word + 'way'
    end
  end


  def split(word)
      word.split(" ").each do |word|
        # if vowels.include?(word[0])
        #   word + 'way'
        # elsif consonants.include?(word[0]) && consonants.include?(word[1]) && vowels.include?(word[2])
        #   word[2..-1] + word[0..1] + 'ay'
        # elsif consonants.include?(word[0]) && vowels.include?(word[1])
        #   word[1..-1] + word[0] + 'ay'
        # elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        #   word[3..-1] + word[0..2] + 'ay'
        # else
        #   word.length < 2
        #   word + 'way'
        # end

      end

  end


end
