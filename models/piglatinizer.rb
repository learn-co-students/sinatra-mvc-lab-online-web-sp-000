require 'pry'

class PigLatinizer 
#   attr_reader :text

  def initialize
    # @text = text
  end 

  def piglatinize(str)
    str_arr = str.split(' ')
    latinized = str_arr.map {|w| piglatinizer(w)}
    latinized.join(' ') 
      
  end 

  def piglatinizer(text)
    first_idx = text[0].downcase

    if ['a','e','i','o','u'].include?(first_idx)
      "#{text}way"
    else 
        cons = []
        cons << text[0]
        # binding.pry
        if ['a','e','i','o','u'].include?(text[1]) == false
            cons << text[1]
          if ['a','e','i','o','u'].include?(text[2]) == false
            cons << text[2]
            if ['a','e','i','o','u'].include?(text[3]) == false
              cons << text[3]
            end 
          end 
        end 
        
        "#{text[cons.length..-1] + cons.join + "ay"}"
    end 
  end 

end 