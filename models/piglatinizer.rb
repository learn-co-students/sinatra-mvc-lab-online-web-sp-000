class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def convert_to_pig_latin
    text.reverse
  end

end
