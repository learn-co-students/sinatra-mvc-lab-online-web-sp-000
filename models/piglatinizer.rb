class PigLatinizer 

  def piglatinize(string)
    words = string.split(" ")
    words.map do |word|
      if word.start_with?(/[aeiouAEIOU]/)
        word << "way"
      else 
        while word.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
        word = word.split.map { |word| word.chars.rotate.join }.join(" ")
          if word.start_with?(/[aeiouAEIOU]/)
            break
          end
        end
        word << "ay"
      end
    end.join(" ")
  end  
end
