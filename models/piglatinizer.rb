require 'pry'

class PigLatinizer

  def piglatinize(phrase)
    rotated = phrase.downcase.split.map do |word|
      word.chars.rotate.join + 'way'
    end

    rotated.join(' ')
  end
end
