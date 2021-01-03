class PigLatinizer
  attr_reader :text
  
  def initialize(text = "")
    @text = text  
  end
  
  def piglatinize(string)
    a = string.split(" ")
    b = a.map {|word| pig_latinize(word)}
    b.join(" ")
  end
  
  def pig_latinize(word)
    
    first_letter = word[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first_letter)
        "#{word}way"
        # piglatinize word that starts with a vowel
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
        # piglatinize word that starts with a consonant
    end
  end
  
end