class PigLatinizer
  attr_accessor :words

  def piglatinize(text)
    latin_string = ''
    if text.split(' ').size == 1
      latin_string = turn_word(text)
    else
      @words = text.split(' ')
      counter = 0
      @words.each do |word|
        pig_word = turn_word(word)
        if counter == 0
          latin_string += pig_word
        else
          latin_string += ' '  + pig_word
        end
        counter += 1
      end
    end
    latin_string
  end

  def turn_word(word)
    pig_word = ''
    # letters = word.split('')
    if word.chr.downcase == 'a' || word.chr.downcase == 'e' || word.chr.downcase == 'o' || word.chr.downcase == 'i' || word.chr.downcase == 'u'
      pig_word = word + 'way'
    else
      split_point = word.index(/[aeiouAEIOU]/)
      consonant_tag = word.slice(0, split_point)
      rest_of_word = word.slice(split_point, word.size)
      pig_word = rest_of_word + consonant_tag + 'ay'
    end
    pig_word
  end
end
