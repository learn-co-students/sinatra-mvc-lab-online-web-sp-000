class PigLatinizer
  
  #def initialize(word)
   # @word = word
  #end
  
  def piggyspeak(word)
    consonant_end = "ay"
    vowel_end = "way"
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    consonants = []
    
    
    word.each_char do |char|
      if !vowels.include?(char)
        consonants << char
        else
        break
      end 
      end
      
     stripped = word[consonants.length..-1]
     stripped = stripped + consonants.join
     result = stripped+consonant_end
     
     if vowels.include?(word[0])
     result = word+vowel_end
     end
     
     result
     end
     
     def piglatinize(string)
      x = string.split(" ")
      if x.length == 1
        piggyspeak(x[0])
       
      else
          temp_array = []
          x.each do |y|
          temp_array << piggyspeak(y)
          end
        temp_array.join(" ")
       end
       end
     
  
end 
  
   
  
