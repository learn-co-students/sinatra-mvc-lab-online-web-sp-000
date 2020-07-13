class PigLatinizer
# attr_reader :pig_latin_text
  def piglatinize(str)
    word_array = str.split(" ")
    word_array.collect do |word|
      pig_latinize_word(word)
    end.join(" ")
  end

  def pig_latinize_word(word)
      letter_array = word.split('')
      if is_vowel?(letter_array[0])
        letter_array.join("") + "way"
      else
        until is_vowel?(letter_array[0]) do
          letter_array << letter_array[0]
          letter_array.shift
        end
        letter_array.join("") + "ay"
      end
  end

  def is_vowel?(letter)
    letter.downcase =~ /[aeiou]/
  end
end
