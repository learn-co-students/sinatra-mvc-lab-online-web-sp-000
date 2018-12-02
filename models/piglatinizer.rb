require 'pry'

class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def convert
    rotated = phrase.split.map do |word|
      word.chars.rotate.join + 'ay'
    end

    rotated.join(' ')
  end
end
