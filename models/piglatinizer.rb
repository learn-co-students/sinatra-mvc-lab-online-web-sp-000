class PigLatinizer

  def piglatinize(string)
    array = string.split(' ')
    array_2 = array.map { |word| piglatinize_word(word) }
    array_2.join(' ')
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


    # Your app will take in a string from a user through a form, convert it to pig latin,
    # and return the string to the user.

    #if first letter in word starts with a consonant move first letter of word to the end and
    # add 'ay' at the end of the word

    #if the first letter in the word starts with a consonant cluster, move consonant cluster of word to the end and
    # add 'ay' at the end of the word

    #For words that begin with vowel sounds, one just adds "way" or "yay" to the end (or just "ay") ||
    # An alternative convention for words beginning with vowel sounds, one removes the initial vowel(s)
    # along with the first consonant or consonant cluster.


end
