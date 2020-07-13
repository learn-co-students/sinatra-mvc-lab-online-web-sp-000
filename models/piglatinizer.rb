require 'pry'

class PigLatinizer
  
  def initialize
  end 
  
  def piglatinize(sentence)
    words = sentence.split(" ")
    new_sentence = ""
    words.each_with_index do |word, index|
      if index == 0 
        new_sentence += pig_word(word)
      else 
        new_sentence += " " + pig_word(word)
      end 
    end 
    new_sentence 
  end 
  
  def pig_word(word)
    fletter = word.split(/[aeiouAEIOU]/)[0]
    if fletter == nil || fletter == ""
      word + "way"
    else 
      word.split(fletter, 2)[1] + fletter + "ay"
    end 
  end 
end 