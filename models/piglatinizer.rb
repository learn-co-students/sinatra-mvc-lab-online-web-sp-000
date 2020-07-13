class PigLatinizer
  
  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end
  
  def piglatinize(word)
    if self.is_vowel?(word)
      word.concat('way')
    else
      word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
  end
end
  
  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize(word)}.join(' ')
end
end
