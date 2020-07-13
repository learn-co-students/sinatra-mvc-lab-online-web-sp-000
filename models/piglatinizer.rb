class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    text_array = words.split(" ")
    pig_array = []

    text_array.each do |word|
      if word.start_with?(/[AEIOUaeiou]/)
        pig_word = word + "way"
        pig_array << pig_word
      elsif word.start_with?(/[AEIOUaeiou]/)==false && word[1].start_with?(/[AEIOUaeiou]/)==false && word[2].start_with?(/[AEIOUaeiou]/)==false
        three_letters = word.slice(0..2)
        pig_word = word.slice(3..-1) + three_letters + "ay"
        pig_array << pig_word
      elsif word.start_with?(/[AEIOUaeiou]/)==false && word[1].start_with?(/[AEIOUaeiou]/)==false
        two_letters = word.slice(0..1)
        pig_word = word.slice(2..-1) + two_letters + "ay"
        pig_array << pig_word
      else
        first_letter = word.slice(0)
        pig_word = word.slice(1..-1) + first_letter + "ay"
        pig_array << pig_word
      end
    end

    pig_array.join(" ")
  end

end
