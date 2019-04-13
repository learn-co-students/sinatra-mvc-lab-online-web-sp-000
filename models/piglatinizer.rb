require 'pry'
class PigLatinizer
  attr_reader :phrase


  def piglatinize(phrase)
    @phrase = phrase
    words = @phrase.split(' ')

    pig_words = words.collect do |word|
      if word.match(/\A[aeiou]*/i).to_s != ""
        word += "way"
      else
        word = word.gsub(/\A[^aeiou]*/, "") + word.match(/\A[^aeiou]*/i).to_s + "ay"
      end
    end

    pig_words.join(" ")

  end
end
