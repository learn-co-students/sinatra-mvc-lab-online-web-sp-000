require "pry"
class PigLatinizer

  def piglatinize(text)
    words = text.split(" ") # split string into individual parts
    if words.length == 1
      piglatinize_word(words)
    else
      piglatinize_sentance(words)
    end
    # var = words.map! { |word| piglatinize_word(word)} # piglatinize each word using piglatinize_word helper method
    # var.join(" ") # join the words again into a string
  end

  def piglatinize_word(word)
    if vowel?(word[0])
      return "#{word}way"
    elsif index = word.index(/[ioueaIOUEA]/)
      start_word = word.slice(0, index)
      end_word = word.slice(index..word.length)
      return "#{end_word}#{start_word}ay"
    end
  end


  def vowel?(letter)
    letter.downcase
    letter == "i" || letter == "o" || letter == "u" || letter == "e" || letter == "a" || letter == "E" || letter == "I" || letter == "O" || letter == "U" || letter == "A"
  end

  def piglatinize_sentance(sentance)
  arr  = sentance.split(" ")
  arr.each { |word| piglatinize_word(word)}.join(" ")
  end

end
