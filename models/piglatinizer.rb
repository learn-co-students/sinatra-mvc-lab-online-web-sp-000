class PigLatinizer
  
def piglatinize(input)
    words = input.split(" ")
    # this is an array of all the input words
    
    translation = words.map {|word| translator(word)}
    # calls the translator method on each word 
    
    translation.join(" ")
    # joins all translated words back into a phrase
  end

  def translator(word)
  # will find the first vowel in each word and break it apart, place the first part at the end of the word and add "ay"
  # if a word starts with a vowel, it will not break the word, only add "way" to the end of it.
    first_character = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first_character)
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
    