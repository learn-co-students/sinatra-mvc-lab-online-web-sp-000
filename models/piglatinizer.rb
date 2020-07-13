class PigLatinizer
  def piglatinize(phrase)
    phrase.split(' ').map do |word|
      piglatinize_word(word)
    end.join(' ')
  end

  def piglatinize_word(word)
    first_vowel_index = word.index(/[aeiouAEIOU]/)
    if first_vowel_index == 0
      "#{word}way"
    else
      "#{word[(first_vowel_index..word.length)]}#{word[0..first_vowel_index-1]}ay"
    end
  end
end
