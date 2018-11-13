class PigLatinizer

  def initialize
  end

  def piglatinize(text)
    words = text.split(" ")
    pig_latin_words = []
    words.each do |word|
      if word[0].match(/[aeouiAEOUI]/)
        word = word + "way"
        pig_latin_words << word
      elsif word[0].match(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
        consonants = []
        word.each_char do |c|
        if c.match(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
            consonants << c
          else
            break
          end
        end
        swap_letters = word.slice!(consonants.join)
        word = word + swap_letters + "ay"
        pig_latin_words << word
      end
    end
    pig_latin_text = pig_latin_words.join(" ")
  end

end



# Better code

  # def piglatinize(text)
  #   words = text.split(" ")
  #   arr = []
  #   words.each do |word|
  #     parts = word.split(/([AEIOUaeiou].*)/).reject{|w| w.empty?}
  #     puts parts
  #     if parts.length == 1
  #       arr << "#{parts[0]}way"
  #     else
  #       arr << "#{parts[1]}#{parts[0]}ay"
  #     end
  #   end
  #   arr.join(" ")
  # end
