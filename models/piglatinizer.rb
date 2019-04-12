class PigLatinizer

  def piglatinize(phrase)
    phrase.split(" ").inject('') {|new, word| new << piglatinizer_word(word) + ' ' }.strip
  end

  def piglatinizer_word(word)
    words = word.split(/([aeiouAEIOU].*)/)
    if  word.size == 1
      #binding.pry
      (words.last + "way")
    elsif words.first.empty?
      #binding.pry
      (words.last + "way")
    else
      #binding.pry
      (words.last + words.first + "ay")
    end
  end


end
