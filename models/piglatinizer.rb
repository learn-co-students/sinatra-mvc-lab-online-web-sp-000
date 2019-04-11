class PigLatinizer
  attr_reader :phrase

  def initialize(phrase=nil)
    @phrase = phrase
  end

  def piglatinize
    words = @phrase.split(" ")
  end
end
