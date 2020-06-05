class PigLatinizer
  
  attr_accessor :word
  
  def piglatinize(word)
    
    array = []
  
    word.split.each do |e|
      if "aeouiAEOUI".include?(e[0])
        array << e + "way"
      elsif 
        i = 0
        sub_consonant = ""
        while !"aeouiAEOUI".include?(e[i])
          sub_consonant << e[i]
          i += 1
        end
      word = e[sub_consonant.length..-1] + sub_consonant + "ay"
      array << word
      end
    end
    array.join(" ")
  end

end
