class PigLatinizer
  
  
  def consonant?(char)
    !char.match(/[AaEeIiOoUu]/)
  end
  
  def latinize_word(word)
    if !consonant?(word[0])
      word = word << "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end
  
  def latinize_sentence(sentence)
    sentence.split.collect { |word| latinize_word(word) }.join(" ")
  end
  
  def piglatinize(input_str)
    x = (input_str.split(" ").length == 1) ? latinize_word(input_str) : latinize_sentence(input_str)
    x
  end
  
end