require 'pry'
class PigLatinizer
  def piglatinize(words)
    piglatin = ""
    words.split do |word| #break down word
      modified_word = shift_to_vowel(word)
      if modified_word == word # No change
        piglatin << "#{word}way "
      else
        piglatin << "#{modified_word}ay "
      end
    end
    return piglatin.strip
  end
  
  def start_with_vowel?(word)
    word[0].downcase.match?(/[aeiou]/)
  end
  
  def shift_to_vowel(word, chars_moved = 0)
    if chars_moved == word.size
      raise "no vowels in #{word}"
    end
    if start_with_vowel?(word)
      return word
    else
      chars_moved += 1
      word
      shift_to_vowel("#{word[1..-1]}#{word[0]}", chars_moved)
    end
  end
end