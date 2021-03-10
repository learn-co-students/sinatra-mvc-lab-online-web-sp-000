class PigLatinizer
  attr_reader :text
  
  def initialize
    @text = text
  end
  
  def piglatinize(text)
    words = text.split(" ")
    words.collect do |word|
      if word.start_with?("A", "a", "E", "e", "I", "i", "O", "o", "U", "u")
        word + "way"
      else
        #takes the first consonants until a vowel is reached
        new_ending = word.split(/[aeiou]/)
      
        #take the first bit we want to remove's length
        to_remove = new_ending[0].length
      
        word.slice(to_remove..-1) + new_ending[0] + "ay"
      end
    end.join(" ")
  end
  
  
  
end