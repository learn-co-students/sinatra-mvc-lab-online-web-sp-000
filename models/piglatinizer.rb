class PigLatinizer
  
  attr_reader :text
  
  def initialize(text)
    @text = text.downcase
  end
  
  def convertor
    
    array = []
  
    text.split.each do |e|
      if "aeoui".include?(e[0])
        array << e + "way"
      elsif 
        i = 0
        sub_consonant = ""
        while !"aeoui".include?(e[i])
          sub_consonant << e[i]
          i += 1
        end
      word = e[sub_consonant.length..-1] + sub_consonant + "ay"
      array << word
    end
    array.join(" ")
  end
end

