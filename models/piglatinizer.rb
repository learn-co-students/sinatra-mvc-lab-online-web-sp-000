class PigLatinizer

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def translator
    @string.split.map { |word| word.chars.rotate.join + "ay"}.join(' ')
  end
end
