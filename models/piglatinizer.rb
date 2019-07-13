class PigLatinizer


  def piglatinize(word)
    array =[]

    if word.split.length == 1
      word[0] =~ /[aeiou]/ ? word.gsub(/([aeiou])(\w+)*/, '\1\2way') : word.gsub(/([^aeiou])(\w+)*/, '\2\1ay')
      
    else
word1= word.split[0][0] =~ /[aeiou]/ ? word.split[0].gsub(/([aeiou])(\w+)*/, '\1\2way') : word.split[0].gsub(/([^aeiou])(\w+)*/, '\2\1ay')
array << word1
word2=word.split[1][0] =~ /[aeiou]/ ? word.split[1].gsub(/([aeiou])(\w+)*/, '\1\2way') : word.split[1].gsub(/([^aeiou])(\w+)*/, '\2\1ay')
array <<  word2
array.join(" ")

    end
  end
end




