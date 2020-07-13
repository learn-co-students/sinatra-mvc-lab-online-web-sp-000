class PigLatinizer
  
  def piglatinize(input) 
    new_word = input.split(" ")
     
    if new_word.length > 1 
      piglatinize_sentence(new_word)
    else 
      piglatinize_word(input)
    end 
  end 
  
  def piglatinize_word(word)
    if word.start_with?(/[aeiouAEIOU]/) 
      word.insert(-1, "way")
    elsif is_consonant?(word[0]) && is_consonant?(word[1]) && is_consonant?(word[2])
        new_word = word.chars
        take = new_word.delete_at(0)
        take2 = new_word.delete_at(0)
        take3 = new_word.delete_at(0)
        new_word << take << take2 << take3
        new_word.push("ay")
        new_word.join("")
    elsif is_consonant?(word[0]) && is_consonant?(word[1])
      new_word = word.chars
      take = new_word.delete_at(0)
      take2= new_word.delete_at(0)
      new_word << take << take2 
      new_word.push("ay")
      new_word.join("")
    else
      new_word = word.chars
      take = new_word.delete_at(0)
      new_word << take 
      new_word.push("ay")
      new_word.join("")
    end 
  end 
  
  def is_consonant?(letter)
     !letter.match(/[aeiouAEIOU]/)
  end 
  
  def piglatinize_sentence(string)
  
      string.map do |word|
        word = word.to_s 
        piglatinize_word(word)
        end.join(" ") 
  end 
end 