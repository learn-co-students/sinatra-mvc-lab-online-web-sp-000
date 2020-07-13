class PigLatinizer

  def piglatinize(str_input)
    str_input.split(" ").length == 1 ? word_piglatinizer(str_input) : sentence_piglatinizer(str_input)
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def word_piglatinizer(word)
    if !consonant?(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def sentence_piglatinizer(sentence)
    sentence.split.collect {|word| word_piglatinizer(word) }.join(" ")
  end
end
