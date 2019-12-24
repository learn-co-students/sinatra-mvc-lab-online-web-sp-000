class PigLatinizer
  attr_reader :text, :user_input, :words

  def piglatinize(sentence)
    words = split_sentence(sentence)

    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels

    changed_words = words.collect do |word|
      if vowels.include?(word[0])
        word + 'way'
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word[0])
        word[1..-1] + word[0] + 'ay'
      end
    end

    pig_me = ""
    changed_words.each do |word|
      pig_me << word + " "
    end
    pig_me[0...-1]
  end

  def split_sentence(sentence)
    words = sentence.split(' ')
  end

end
