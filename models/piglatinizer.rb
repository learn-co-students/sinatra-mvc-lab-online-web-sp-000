class PigLatinizer

  def piglatinize(string)
    words = string.split(" ")
    words_array = words.map do |word|
      if word.match(/\A[aeiouAEIOU]/)
        word + 'way'
      else
        first_letters = word.match(/\A[^aeiouAEIOU]*/)
        vowel_on = word.match(/[aeiouAEIOU].*/)
        vowel_on.to_s + first_letters.to_s + 'ay'
      end
    end
    words_array.join(" ")
  end


end
