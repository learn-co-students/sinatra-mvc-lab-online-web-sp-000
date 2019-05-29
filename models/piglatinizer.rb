class PigLatinizer
  # attr_accessor :word

  # def initialize (word)
  #   @word=word
  # end

  def piglatinize(word)
    new_word=word.split('')
    while !new_word.first.match(/[aeoiu]/)
      new_word.push(new_word.first).shift
    end
    new_word.push("ay").join('')
  end

end
