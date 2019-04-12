class PigLatinizer

  def piglatinize(phrase)
    phrase.split(" ").inject('') {|new, word| new << piglatinizer_word(word) + ' ' }.strip
  end

  def piglatinizer_word(word)
    words = word.split(/([aeiouAEIOU].*)/)
    if  word.size == 1 || words.first.empty?
      (words.last + "way")
    else
      (words.last + words.first + "ay")
    end
  end


end
