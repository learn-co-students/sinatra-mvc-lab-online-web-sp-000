class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    words = text.split(" ")
    words.map! do |word|
      if !"aeiouAEIOU".include?(word[0]) && word[0].match(/\D/)
        start_consonants = word.scan(/^[^aeiou]*/i)[0]
        mid_word = word.split(start_consonants,2)[1]
        word = mid_word + start_consonants + "ay"
      elsif "aeiouAEIOU".include?(word[0]) && word[0].match(/\D/)
        word += "way"
      else
        #don't do anything
      end
    end
    words.join(' ')
  end
end
