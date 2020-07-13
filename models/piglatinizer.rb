class PigLatinizer
  attr_accessor :input
  
  def initialize(input)
    @input = input
  end
  
  def first_vowel
    @input.scan(/[aieouAIEOU]/).first
  end
  
  def index_of_fv
    @input.index(first_vowel)
  end
  
  def find_consonants_before_vowel
    @input[0...index_of_fv]
  end
  
  def transform
    if index_of_fv == 0
      piglatin = @input + "way"
    else
      piglatin = @input[index_of_fv..] + find_consonants_before_vowel + "ay"
    end
    piglatin
  end
end