class PigLatinizer

  attr_reader :text

  def initialize(text =[])
    @text = text
  end

  def piglatinize(text)
    words = text.split(" ")
    pl_words = words.collect do |word|
      piglatinize_word(word)
    end
    pl_words.join(" ")
  end

  def piglatinize_word(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    if vowels.include?(word[0].downcase)
      "#{word}way"
    else
      consonants = []
      consonants << word[0]
      if vowels.include?(word[1]) == false
        consonants << word[1]
        if vowels.include?(word[2]) == false
          consonants << word[2]
        end
      end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end

end