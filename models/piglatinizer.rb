class PigLatinizer

  attr_accessor :string

  def piglatinize(string)
    array = string.split(" ")
    new_array = []

    alphabet = ("a".."z").to_a
    vowels = ["a","e","i","o","u"]
    consonants = alphabet - vowels

    array.map do |word|
      new_word = []
      if vowels.include?(word[0].downcase)
        new_word = word + "way"

      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
        new_word =  word[3..-1] + word[0..2] + "ay"

      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
        new_word = word[2..-1] + word[0..1] + "ay"

      elsif consonants.include?(word[0].downcase)
        new_word = word[1..-1] + word[0] + "ay"
      end
      new_array << new_word
    end
    new_array.join(" ")
  end

end
