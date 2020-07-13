require 'pry'
class PigLatinizer
  attr_accessor :text
  
  def initialize(text)
    @text = text.downcase.to_s
  end
  
  def first_letters
    terminate = "n"
    vowels = "aeiou"
    first_letter_array = []
    i = 0
    while terminate == "n"
      if vowels.include?(text[i].to_s) == true
        terminate = "y"
      else
        terminate = "n"
        first_letter_array << text[i].to_s
      end
      i+=1
    end
    first_letter_array.join
  end
  
  def translate
    first_letter_index = first_letters.length
    text_count_index = text.length - 1
    modified_text = text[first_letter_index..text_count_index]
    pig_latin_word = modified_text + first_letters + "ay"
    pig_latin_word
  end
end