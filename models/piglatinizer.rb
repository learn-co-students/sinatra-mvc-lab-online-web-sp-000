class PigLatinizer
  attr_reader :string, :words, :piglatinized

  def piglatinize(string)
    @string = string
    @words = string.split(" ")
    piglatin = []

    @words.each do |word|
      if word.start_with?(/[AEIOUaeiou]/)
        piglatin << "#{word}way"
      elsif word.start_with?(/[sS][pt]r{1}/)
        piglatin << "#{word[3..-1]}#{word[0..2]}ay"
      elsif word.start_with?(/\w[rhltk]/)
        piglatin << "#{word[2..-1]}#{word[0..1]}ay"
      else
        piglatin << "#{word[1..-1]}#{word[0]}ay"
      end
    end

    @piglatinized = piglatin.join(" ")
  end

end
