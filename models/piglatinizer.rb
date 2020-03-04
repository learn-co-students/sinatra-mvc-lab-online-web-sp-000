class PigLatinizer
  attr_reader :text

  def piglatinize(input_str)
    input_str.split(" ").length == 1 ? pl_word(input_str) : pl_phrase(input_str)
  end

  def consonant?(letter)
    !letter.match(/[aAeEiIoOuU]/)
  end

  def pl_word(word)
    if !consonant?(word[0])
      word = word + 'w'
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word[3..-1] + word[0..2]
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word[2..-1] + word[0..1]
    elsif consonant?(word[0])
      word = word[1..-1] + word[0]
    end
    word + 'ay'
  end

  def pl_phrase(phrase)
    phrase.split.collect {|word| pl_word(word)}.join(" ")
  end

end
