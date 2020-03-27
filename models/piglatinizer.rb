class PigLatinizer

  def piglatinize(text)
    text_arr = text.split(" ")
    text_arr.collect { |word| self.convert(word) }.join(" ")
  end

  def convert(word)
    if word.downcase.chars[0] =~ /[aeiou]/
      word + "way"
    else
      if word.chars[1] =~ /[aeiou]/
        word.chars.rotate.join + "ay"
      else
        if word.chars[2] =~ /[aeiou]/
          word.chars.rotate(2).join + "ay"
        else
          if word.chars[3] =~ /[aeiou]/
            word.chars.rotate(3).join + "ay"
          end
        end
      end
    end
  end

end
