require 'pry'
class PigLatinizer

def piglatinize(sentence)
  words_array = sentence.split(" ")
  if words_array.length == 1
    word = words_array.pop
    if %w(a e i o u A E I O U).include?(word[0])
      piglatinized = word + 'way'
    else
      first_vowel = word[/[aeiouAEIOU]/]
      char = word.split(/[aeiouAEIOU]/,2)
      piglatinized = first_vowel+char[1]+char[0]+'ay'
    end
  else
    new_array = []
    words_array.each do |word|
      if %w(a e i o u A E I O U).include?(word[0])
        new_array << word + 'way'
      else
        first_vowel = word[/[aeiouAEIOU]/]
        char = word.split(/[aeiouAEIOU]/,2)
        new_array << first_vowel+char[1]+char[0]+'ay'
      end
      new_array
    end
    piglatinized = new_array.join(' ')
  end

end

end
