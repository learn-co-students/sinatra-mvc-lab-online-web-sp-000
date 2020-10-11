class PigLatinizer
  
  def piglatinize(phrase)
    piglatinized = []
    piglatin = phrase.split(" ")
    
    piglatin.each do |word|
      vowel = word.scan(/[aAeEiIoOuU]/).first
      phrase = word.split(vowel, 2)
      if phrase[0] == ""
        piglatinize = [vowel, phrase[1], "way"].join
      else 
        piglatinize = [vowel, phrase[1], phrase[0], "ay"].join
      end
      piglatinized << piglatinize
    end 
    piglatinized.join(" ")
  end 

end 