class PigLatinizer
  def piglatinize(input)
    input.split(' ').size == 1 ? piglatinize_word(input) : piglatinize_sentence(input)
  end

  private

  def starting_vowel?(word)
    word[/^[AEIOUaeiou]/]
  end

  def piglatinize_word(word)
    if starting_vowel?(word)
      word << 'way'
    else
      vowel_index = word.index(word[1..-1][/[AEIOUaeiouy]/]) # Find first vowel or y in word
      word[vowel_index..-1] << word[0..vowel_index - 1] << 'ay'
    end
  end

  def piglatinize_sentence(sentence)
    sentence.split(' ').collect { |word| piglatinize_word(word) }.join(' ')
  end
end