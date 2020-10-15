require 'pry'

class PigLatinizer 

  def piglatinize(string)
    words = string.split(" ")
    words.map do |word|
      if word.start_with?(/[aeiouAEIOU]/)
        word << "way"
      elsif word.start_with?(/[bcdfghjklmnpqrstvwxyz]/)
        pig_word = word.split.map { |word| word.chars.rotate.join }.join(" ") << "ay"
      else
        word << "ay"
      end
    end.join(" ")
  end  
end


  # def piglatinize(string)
  #   words = string.split(" ")
  #   words.map do |word|
  #     # binding.pry

  #     word.piglatinize_word
  #   end
  # end

  # def piglatinize_word
  #   letters = word.split("")
  #   letters.each do |letter|
  #     # if letter.match(/[bcdfghjklmnpqrstvwxyz]/)
  #     if letter.scan(/[bcdfghjklmnpqrstvwxyz]/)
  #       # move letter to end of array
  #       l = letters.shift
  #       letters << l
  #     end
  #   # convert letter array to string word
  #   pig_word = letters.join(" ")
  #   # add 'ay' to end of word
  #   pig_word << "ay"
  #   end
  # end

  # method piglatinize take in string = split
  # take array from string - map over and call 2nd method (piglatinize_word) to piglatinize word.
