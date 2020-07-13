class PigLatinizer

  def consonant?(letter)
    !letter.match(/[aeiou]/i)
  end

  def piglatinize_word(word)
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

  def piglatinize_phrase(phrase)
    phrase.split.collect do |word|
      piglatinize_word(word)
    end.join(" ")
  end

  def piglatinize(user_input)
    if user_input.split(" ").size == 1
      piglatinize_word(user_input)
    else
      piglatinize_phrase(user_input)
    end
  end

end
