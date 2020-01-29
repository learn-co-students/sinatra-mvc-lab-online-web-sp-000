class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u","A", "E", "I", "O","U"]

    if vowels.include? word[0]
      word = word.split("").shift
      word + "way"
    else
      constants = ""
      while !vowels.include? word[0]
        constants << word[0]
        word = word.split("")[1..-1].join
      end
      word + constants + "ay"
    end
  end

  def to_pig_latin
    @text.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
