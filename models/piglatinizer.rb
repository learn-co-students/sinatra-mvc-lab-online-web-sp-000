class PigLatinizer
  def piglatinize(phrase)
    phrase.split(" ").map {|i| piglatinize_word(i)}.join(" ")
  end
  
  private
  
  def piglatinize_word(word)
    return word + 'way' if /^[aeiouAEIOU]/.match?(word)
    
    start = /^[^aeiouAEIOU]*/.match(word).to_s
    
    return word.sub(/^[^aeiouAEIOU]*/, '') + start + 'ay'
  end
end