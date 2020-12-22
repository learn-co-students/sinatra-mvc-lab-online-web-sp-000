class PigLatinizer

  def initialize
  end

  def piglatinize(phrase)
      phrase.split(" ").map do |word|
          if word.start_with?(/[aeiou]/i)
              pig_latin = word += "way"
          else
              first_vowel = word =~ /[aeiou]/
              word_array = word.split("")
              pig_latin = word_array.pop(word_array.length - first_vowel).concat(word_array).join ("")
              pig_latin += "ay"
          end
      end.join(" ")
  end
  end
