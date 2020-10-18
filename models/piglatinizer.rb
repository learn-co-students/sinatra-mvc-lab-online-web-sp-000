class PigLatinizer 
  
  def piglatinize(phrase)
    #separate a string into individual words .split(" ")
    word_array = phrase.split(" ")
    pig_phrase = word_array.map {|word| piglatinize_word(word)}
    pig_phrase.join(" ")
  end  
    
  def piglatinize_word(word)  
    if word.start_with?(/\b[AEIOUaeiou]/) #starts with vowel
      word = "#{word}way" #add -way to end of word
    elsif word.start_with?(/\b[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/)
      parts = word.split(/([aeiouy].*)/) 
        #selects consonants from the beginning of the word
      "#{parts[1]}#{parts[0]}ay"
        #rearranges the parts and adds -ay
    end 
  end
  
end