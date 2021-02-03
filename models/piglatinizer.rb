class PigLatinizer
  
  def initialize
  end

  def piglatinize(phrase)
    phrase.split(" ").collect do |word|
      if word.start_with?(/[aeiouy]/i)
        word + "way"
      else
        cons = word.scan(/\A[^aeiou]+/i).first
        word.gsub(/\A[^aeiou]+/i,"") + cons + "ay"
      end
    end.join(" ")
  end

end