class PigLatinizer 

  attr_reader :word

  def initialize
    @word = word
  end

  def piglatinize(word)
    words = word.split(" ")
    pig_latin = []
    words.each do |word|
      if word.length == 1
        pig_latin << word + "way"
      elsif word.match(/^[aeiou]/i)
        pig_latin << word + "way"
      else
        consonants = word.split(/[aeiou]/).first
        cut = consonants.length
        pig_latin << word[cut...word.length] + consonants + "ay"
      end
    end
    pig_latin.join(" ")
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize(word)}.join(" ")
  end 

end 