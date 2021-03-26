require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    @piglatin = ""
    arr1 = text.split
    if arr1.size > 1
      arr3 = arr1.map do |w|
        if w.downcase.start_with?(/[aeiou]/)
          "#{w}way"
        else
          arr2 = w.split(/([aeiou].*)/)
          "#{arr2[1]}#{arr2[0]}ay"
        end
      end
      @piglatin = arr3.join(" ")
    else
      if text.downcase.start_with?(/[aeiou]/)
        @piglatin = "#{text}way"
      else
        arr3 = text.split(/([aeiou].*)/)
        @piglatin = "#{arr3[1]}#{arr3[0]}ay"
      end
    end
    @piglatin
  end

end
