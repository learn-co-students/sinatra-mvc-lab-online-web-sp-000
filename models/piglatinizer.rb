class PigLatinizer


  def piglatinize(word)
        word[0] =~ /[aeiou]/ ? word.gsub(/([aeiou])(\w+)*/, '\1\2way') : word.gsub(/([^aeiou])(\w+)*/, '\2\1ay')
  end


end
