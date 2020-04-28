class PigLatinizer

  def piglatinize(string)
    split_string = string.split(" ")
    itetrate_string = split_string.collect {|word| piglatinize_word(word)}
    itetrate_string.join(" ")
  end
  def piglatinize_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    first_letter = word[0].downcase
    if vowels.include?(first_letter)
        "#{word}way"
    else
      consonants = []
      consonants << word[0]
        if vowels.include?(word[1]) == false
          consonants << word[1]
          if vowels.include?(word[2]) == false
            consonants << word[2]
          end
        end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end


end



















# class PigLatinizer
  
  
#   def piglatinize(user_input)
#     phrase_array = []
#     user_input.to_s.split(" ").each do |word|
#       word.to_s
#       piglatin_translator(word)
#       phrase_array << word
#     end
#     phrase_array.join(" ")
#     phrase_array
#   end


#   def piglatin_translator(word)
#     if vowel?(word[0])
#       word = word + "w"
#     elsif !vowel?(word[0]) && !vowel?(word[2]) && !vowel?(word[3])
#       word = word.slice(3..-1) + word.slice(0,3)
#     elsif !vowel?(word[0]) && !vowel?(word[1])
#       word = word.slice(2..-1) + word.slice(0,2)
#     else
#       word = word.slice(1..-1) + word.slice(0)
#     end
#     word << "ay"
#   end
  
  
#   def vowel?(word)
#     word.include?"aAeEiIoOuU"
#   end
  
  
# end





