class PigLatinizer


  def piglatinize(input)
    phrase = input.split(" ")
    display_phrase = []
    phrase.each do |word|
      latin = word.partition(/[AaEeIiOoUu]/)
      latin << latin.shift
      if word.downcase.start_with?("a", "e", "i", "o", "u")
        display_phrase << latin.join + "way"
      else
        display_phrase << latin.join + "ay"
      end
    end
    display_phrase.join(" ")
  end


end