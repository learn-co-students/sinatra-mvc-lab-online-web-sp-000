class PigLatinizer

  def piglatinize(str)
    arr = str.split(' ')
    map = arr.map {|word| piglatinize_word(word)}
    map.join(' ')
  end

  def piglatinize_word(word)
    if word[0].match(/[aAeEiIoOuU]/)
      piglatinize_vowel(word)
    else
      piglatinize_consonant(word)
    end
  end

  def piglatinize_vowel(word)
    "#{word}way"
  end

  def piglatinize_consonant(word)
    vowel_idx = get_first_vowel_index(word) - 1
    extra = word.slice(0, vowel_idx)
    word = word.slice(vowel_idx, word.length)

    "#{word}#{extra}ay"
  end

  def get_first_vowel_index(word)
    i = 0
    found = false
    until found
      if word[i].match(/[aAeEiIoOuU]/)
        found = true
      end
      i += 1
    end

    i
  end

end