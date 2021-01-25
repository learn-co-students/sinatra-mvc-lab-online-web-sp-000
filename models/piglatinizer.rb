require 'pry'

class PigLatinizer

  def piglatinize(phrase) #this method splits a string into individual words
    # piglatinize each word using the piglatinize_word helper method
    # join the words again into a string
    split_string = phrase.split(" ")
    words = split_string.map {|w| piglatinize_word(w)}
    words.join(" ")
  end

  def piglatinize_word(word)
    first_letter = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
        consonants = []
        consonants << word[0]

        if ["a", "e", "i", "o", "u"].include?(word[1]) == false
            consonants << word[1]
            if ["a", "e", "i", "o", "u"].include?(word[2]) == false
              consonants << word[2]
            end
        end
        "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end
end