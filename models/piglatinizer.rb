class PigLatinizer
  attr_accessor :text

  def piglatinize (phrase)
    alpha = ('a'..'z').to_a + ('A'..'Z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels
    arr = phrase.split
    translated = arr.map do |str|
      if vowels.include?(str[0])
        str + 'way'
      elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
        str[3..-1] + str[0..2] + 'ay'
      elsif consonants.include?(str[0]) && consonants.include?(str[1])
        str[2..-1] + str[0..1] + 'ay'
      elsif consonants.include?(str[0])
        str[1..-1] + str[0] + 'ay'
      else
        str # return unchanged
      end
    end
    translated.join(' ')
  end
end
