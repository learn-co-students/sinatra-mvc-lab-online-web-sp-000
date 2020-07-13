class PigLatinizer
  def initialize
  end
  
  def piglatinize(str)
    words = str.split(" ")
    words.collect do |word|
      piglatinize_word(word)
    end.join(" ")
  end
  
  def piglatinize_word(word)
    vowels = ["a", "e", "i", "o", "u", "y"]
    if vowels.include?(word[0].downcase)
      return "#{word}way"
    end
    parts = word.split /([aeiou].*)/
    "#{parts.last}#{parts.first}ay"
  end
end