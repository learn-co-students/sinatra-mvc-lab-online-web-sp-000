class PigLatinizer
  
  def piglatinize(word)
    
    first_letter_array = ["a", "e", "i", "o", "u"]
    first_letter = word[0].downcase
    
    if first_letter_array.include?(first_letter)
      puts "#{word}way"
    else
      consonants = []
      if !first_letter_array.include?(word[0]) && !first_letter_array.include?(word[1]) && !first_letter_array.include?(word[2]) 
        consonants << word[0]
        consonants << word[1]
        consonants << word[2]
        word = word.slice!(3..-1) + word[0] + "ay"
      elsif !first_letter_array.include?(word[0]) && !first_letter_array.include?(word[1])
        consonants << word[0]
        consonants << word[1]
        word = word.slice!(2..-1) + word[0] + "ay"
      elsif !first_letter_array.include?(word[0])
        consonants << word[0]
        word = word.slice!(1..-1) + word[0] + "ay"
      end
    end
    word
  end 

end