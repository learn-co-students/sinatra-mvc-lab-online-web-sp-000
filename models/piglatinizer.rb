class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u","A", "E", "I", "O","U"]
    moved_char = ""
    if vowels.include? word[0]
      word + "way"
    else
      while !vowels.include? word[0]
        moved_char << word[0]
        word = word[1..-1]
      end
      word + moved_char + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
