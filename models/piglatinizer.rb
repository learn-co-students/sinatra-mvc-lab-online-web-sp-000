require 'pry'

class PigLatinizer
  # attr_reader :text

  def initialize
    # @text = words.split(" ")
  end

  #split text in array on " " (space)

  #map over array of strings and set return to new array
    #if string[0] == regex consonent
      #pop first letter off and psuh to end, then push on "ay"
    #elseif string[O] ==regex vowel
      #push "way" on to end
    #end
  #end

  #join new array with a " " (space)

  # def split_string
  #   text.split(" ")
  # end

  def piglatinize(words)
    org_array = words.split(" ")
    # binding.pry
    pig_array = org_array.collect do |word|
      if word.start_with?(/[aeiouAEIOU]/)
        word.concat('way')
      elsif word.start_with?(/wh/)
        first_sound = "wh"
        word_beg = word[2..-1]
        word_beg.concat(first_sound, 'ay')
      elsif word.start_with?(/th/)
        first_sound = "th"
        word_beg = word[2..-1]
        word_beg.concat(first_sound, 'ay')
      elsif word.start_with?(/Str/)
        first_sound = "Str"
        word_beg = word[3..-1]
        word_beg.concat(first_sound, 'ay')
      elsif word.start_with?(/sk/)
        first_sound = "sk"
        word_beg = word[2..-1]
        word_beg.concat(first_sound, 'ay')
      elsif word.start_with?(/pl/)
        first_sound = "pl"
        word_beg = word[2..-1]
        word_beg.concat(first_sound, 'ay')
      elsif word.start_with?(/spr/)
        first_sound = "spr"
        word_beg = word[3..-1]
        word_beg.concat(first_sound, 'ay')
      elsif word.start_with?(/pr/)
        first_sound = "pr"
        word_beg = word[2..-1]
        word_beg.concat(first_sound, 'ay')
      else
        first_letter = word[0]
        word_beg = word[1..-1]
        word_beg.concat(first_letter, 'ay')
      end
    end
    pig_array.join(" ")
  end

end


# "noodle soup" becomes "oodlenay oupsay"
# "big apple" becomes "igbay appleway" (note the added "w" in "appleway")
