class PigLatinizer
  def isVowel?(c)
    c.downcase.match(/[aeiou]/) != nil
  end

  def piglatinize(string)
    string.split(" ").collect { |s| piglatinize_word(s) }.join(" ")
  end

  def piglatinize_word(word)
    if isVowel?(word.chars.first)
      word + "way"
    else
      latinized = ["", "", "ay"]
      # match the first consonants and put them into latinized [1]
      latinized[1] = word.match(/\A[^aeiou]+/)
      # put the rest of the word into latinized [0]
      latinized[0] = word.split(/\A[^aeiou]+/)[1]
      latinized.join("")
    end
  end
end
