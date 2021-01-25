require 'pry'

class PigLatinizer

  def piglatinize(phrase) #this method splits a string into individual words
    # piglatinize each word using the piglatinize_word helper method
    # join the words again into a string
    split_string = phrase.split(" ")
    words = split_string.map {|w| piglatinize_word(w)}
    words.join(" ")
  end

  def piglatinize_word(word) # checks to see if the first letter of the word is a vowel
    # if it is a vowel, then we're good to end way to the end of the word
    # if it isn't a vowel, then we shovel that letter into our consonants array
    # then we check the next letter, if it's a vowel, we add way to the end of the word
    # if it's not a vowel, then we shovel it into the consonants array
    # after shovelin beginning consonants into consonants array, we split the word using a range and then we join it back together with "ay" at the end.
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
            # binding.pry
        end
        "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end
end