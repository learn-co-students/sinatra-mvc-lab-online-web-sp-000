class PigLatinizer

  def piglatinize(string)
    arr = string.split(" ")
    arr.map do |word|

      if ["a", "e", "i", "o", "u"].include?(word[0].downcase)
        word << "way"

      else
        i = 0
        word.each_char do |letter|
          if ["a", "e", "i", "o", "u"].include?(letter.downcase)
            break
          end
          i +=1
        end
        end_of_word = word.slice!(0, i)
        word << end_of_word << "ay"
      end

    end.join(" ")
  end
  
end
