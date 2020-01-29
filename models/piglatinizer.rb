class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u","A", "E", "I", "O","U"]
    moved_char = ""
    if vowels.include? word[0]
      word << word[0]
      word = word[1..-1]
      word + moved_char + "way"
    else
      constants = ""
      while !vowels.include? word[0]
        moved_char << word[0]
        word = word[1..-1]
      end
      word + moved_char + "ay"
    end
  end

  def to_pig_latin
    @text.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
