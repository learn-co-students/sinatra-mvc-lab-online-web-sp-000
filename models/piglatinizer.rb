class PigLatinizer

  def consonant?(word)
    /^[^aeiouAEIOU]/.match?(word)
  end

  def convert(word)
    if consonant?(word)
      word << word.slice!(/^[^aeiouAEIOU]+/) + 'ay'
    else
      word + 'way'
    end
  end

  def piglatinize(input)
    input.split.map {|w| convert(w) }.join(" ")
  end

end