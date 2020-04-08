class PigLatinizer



  # If the word begins with a vowel sound,
  # then we add the sound of "way" to the end of the word.
  def is_it_a_vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end

  def piglatinize(word)
    sentence = word.split(" ")
    if sentence.length == 1

      if self.is_it_a_vowel?(word)
        word.concat('way')
      else
        word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
      end

    elsif sentence.length > 1
      return translate(word)
    end
  end

  # transferring the initial consonant or consonant blend (for example, "ch" or "str")
  # of each word to the end of the word along with the syllable "-ay"
  def translate(phrase)
    chop_phrase = phrase.split(" ")

    pig_latin = chop_phrase.collect do |word|
      piglatinize(word)
    end

    new_phrase = pig_latin.join(" ")
  end

end
