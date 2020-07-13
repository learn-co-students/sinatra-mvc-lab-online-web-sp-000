
class PigLatinizer

   def piglatinize(word)
    @word = word

     if @word.include?(" ")
      split_sentence.join(" ")
    elsif vowels.include?(@word[0])
      @word + "way"
    elsif consonants.include?(@word[0]) && consonants.include?(@word[1]) && consonants.include?(@word[2])
      @word[3..-1] + @word[0..2] + "ay"
    elsif consonants.include?(@word[0]) && consonants.include?(@word[1])
      @word[2..-1] + @word[0..1] + "ay"
    elsif consonants.include?(@word[0])
      @word[1..-1] + @word[0] + "ay"
    end

   end

   def split_sentence
    array = @word.split(" ")
    array.map {|word| piglatinize(word)}
  end

   def vowels
    %w[a e i o u A E I O U]
  end

   def consonants
    ('a'..'z').to_a + ('A'..'Z').to_a - vowels
  end

 end
