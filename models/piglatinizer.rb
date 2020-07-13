class PigLatinizer

  def piglatinize(string)
    return pigword(string) if string.split.size < 2
    pigphrase(string)
  end

  def pigword(word)
    return word + 'way' if word[0].match(/[aAeEiIoOuU]/)
    vowel = /[aAeEiIoOuU]/.match(word)
    vowel[0] + vowel.post_match + vowel.pre_match + 'ay'
  end

  def pigphrase(phrase) phrase.split.map { |w| pigword(w) }.join(' ') end

end
