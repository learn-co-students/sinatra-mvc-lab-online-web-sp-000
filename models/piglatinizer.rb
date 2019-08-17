require 'pry'
class PigLatinizer
  
  def piglatinize(string)
     
    if string.start_with?(/aeiou/) 
      new_string.prepend("way")
    else
      new_string = string.split
      new_string
      binding.pry 
    end
  end 
  
  
# Pig Latin is a made-up language formed from English by transferring the initial consonant or consonant blend (for example, "ch" or "str") of each word to the end of the word along with the syllable "-ay". If the word begins with a vowel sound, then we add the sound of "way" to the end of the word.
  
end 