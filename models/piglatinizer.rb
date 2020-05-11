class PigLatinizer

  attr_accessor :converted_phrase, :user_phrase

  def piglatinize(str)
      vowels = ["a", "e", "i", "o", "u","A","E","I","O","U"]

      if vowels.find {|v| v == str[0]
        str + "way"  #if it begins with a vowel just add "way"
      elsif vowels.include?(str[1])
        front_end = str.slice!(0)
        str + front_end +"ay"
      else
        vowel_index = str.index(/[aeiou]/)
        front_end = str.slice!(0..vowel_index-1)
        str + front_end +"ay"
      end
  end

  def to_pig_latin(phrase)
    @converted_phrase = phrase.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end
