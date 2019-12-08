require 'pry'

class PigLatinizer
  
 
  def piglatinize(string)
     a = string.split(" ")
     b = a.map {|word| piglatinize_word(word)}
     b.join(" ")
  end


  def piglatinize_word(word)
     vowels_array = ['a', 'e', 'i', 'o', 'u']
     cons_array = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'y', 'z'] 
     first_letter = word[0].downcase
   
    if vowels_array.include?(first_letter)
      word + "way"
    else 
      
      consonants = [] 
      consonants << word[0]
        if !vowels_array.include?(word[1])
          consonants << word[1]
          
          if !vowels_array.include?(word[2])
            consonants << word[2]
            
          end 
        end 
      
       "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end 
  end

end 