require 'pry'

class PigLatinizer

  def piglatinize(words)
    words = words.split(' ')

    words.collect do |word|
      if word[0].match(/[aeouiAEIOU]/)
        word = word + "way"
      else
        word = word.split(/([aeiouAEIOU].*)/)
        word = word[1] + word[0] + "ay" 
      end
    end.join(' ')
  end
end

# w1 = PigLatinizer.new
# puts w1.piglatinize("I")