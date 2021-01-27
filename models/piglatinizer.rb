require 'pry'
class PigLatinizer 
  
  def piglatinize(string)
    string.split.map {|word| pig_translate(word)}.join(" ")
  end
  
  def pig_translate(word)
    alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
    vowel = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    consonant = alphabet - vowel
    
    if vowel.include?(word[0])
      word = word + "way"
    elsif consonant.include?(word[0]) && consonant.include?(word[1]) && consonant.include?(word[2])
      word = word.slice(3..-1) + word.slice(0,3) << "ay"
    elsif consonant.include?(word[0]) && consonant.include?(word[1])
      word = word.slice(2..-1) + word.slice(0,2) << "ay"
    elsif consonant.include?(word[0])
      word = word.slice(1..-1) + word.slice(0,1) << "ay"
    end
    word
  end
  
  
end