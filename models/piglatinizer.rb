class PigLatinizer 
  
  # attr_accessor :text 
  
  # def initialize(text=nil)
  #   @text = text 
  # end 
  
  def piglatinize(text)
    text.split(" ").length > 1 ?  pig_paragraph(text) : pig_word(text)
  end
  
  def pig_word(word)
    cons = "BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz"
    vowels = "AEIOUaeiou"
    initial = []
    if cons.include?(word[0])
      i = 0 
      until vowels.include?(word[i]) do 
        initial << word[i]
        i += 1 
      end 
      word = "#{word.slice(i, word.length)}#{word.slice(0, i)}ay"
    else
      word = "#{word}way"
    end
  end 

  def pig_paragraph(paragraph)
    pig_arr = paragraph.split(" ").map{|word| pig_word(word)}
    pig_arr.join(" ")
  end
  
end 