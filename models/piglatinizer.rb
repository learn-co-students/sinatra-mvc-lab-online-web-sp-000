# require 'pry'
#
# class PigLatinizer
#
#   def piglatinize(word)
#     return word if %w[and an in].include?(word) #one syllable exceptions
#     letters = word.split("")
#     letters.keep_if {|letter| letter != "."}
#     if letters.size > 1
#       until vowel?(letters[0])
#         letters << letters.shift
#       end
#       letters  << "ay"
#     end
#     letters.join
#   end
#
#   def to_pig_latin(text)
#     words = text.split(" ")
#     words.map! {|word| piglatinize(word)}
#     words.join(" ")
#   end
#
#   def vowel?(letter)
#     letter.downcase
#     letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
#   end
#
# end


class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def is_vowel?(word)
    vowels = 'aeiou'
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end

  def piglatinize(word)
    if self.is_vowel?(word)
      word.concat('way')
    else
      word.concat(word.slice!(/^[^aeiou]*/i || "")) + 'ay'
      word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
    end
  end

  def translator
    words = @phrase.split
    new_string = words.map do |word|
      translate(word)
    end
    new_string.join(' ')
  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize(word)}.join(' ')
  end
end
