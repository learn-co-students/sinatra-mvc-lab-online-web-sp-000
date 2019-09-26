class PigLatinizer
  
  attr_reader :text 
  
  def initialize
    @text = text
  end
  
  def piglatinize(text)
    string = []
    all_words = text.split
    all_words.each do |word|
      first_letter = word[0]
      second_letter = word[1]
      third_letter = word[2]
      last_letter = word[-1]

      if is_wovel(first_letter)
        string << word + "way" + " "

      elsif !is_wovel(first_letter) && !is_wovel(second_letter) && !is_wovel(third_letter)
        word[0..2] = ""
        string << word + first_letter + second_letter + third_letter + "ay" + " "

      elsif !is_wovel(first_letter) && !is_wovel(second_letter) && is_wovel(third_letter)
        word[0..1] = ""
        string << word + first_letter + second_letter + "ay" + " "

      elsif !is_wovel(first_letter) && is_wovel(second_letter)
        word[0] = ""
        string << word + first_letter + "ay" + " "
      end
      
    end
    
    string.join.strip
    
  end

  def is_wovel(letter)
    if letter.downcase == "a" || letter.downcase == "e" || letter.downcase == "i" || letter.downcase == "o" || letter.downcase == "u"
      true 
    else
      false 
    end
  end
  
end