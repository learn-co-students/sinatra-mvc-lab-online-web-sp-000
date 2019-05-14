class PigLatinizer
  VOWELS = ["a", "e", "i", "o", "u"]
  attr_reader :text

  # def initialize(user_phrase = nil)
  #   @text = user_phrase
  # end

  def piglatinize(text)
    words_array = text.split(" ")

    words_array.map do |word|
      if find_first_vowel_index(word) == 0
        result = word + "way"
      else
        first_group = first_part(word)
        result = word.sub(first_group, "")
        result = result + first_group
        result = result + "ay"
      end
    end.join(" ")
  end

  def first_part(word)
    first_group = []

    (0..find_first_vowel_index(word)-1).each do |i|
      first_group << word[i]
    end
    first_group.join("")
  end

  def find_first_vowel_index(word)
    word.split("").each.with_index do |letter, i|
      return i if VOWELS.include?(letter.downcase)
    end
  end
end
