require 'pry'

class PigLatinizer
  
  # attr_reader :text
 
  # def initialize
  #   @text = text
  # end
  
  
  def piglatinize(text)
    array = text.split(" ")
    new_array = []
    array.each do |word|
      new_array << self.convert(word)
    end
    new_array.join(" ")
  end
  
  
  def convert(word) 
    
    if word.start_with?('a','e','i','o','u','A','E','I','O','U') 
      "#{word + "way"}"
    elsif 
      consonants = word.split(/[aeiouAEIOU]/)
      rest_of_word = word[consonants[0].length..-1]
      "#{rest_of_word + consonants[0] + "ay"}"
    end
    
    
  end
  
  
end