class PigLatinizer

  def initialize
  end

  def piglatinize(phrase)
    word_array = phrase.split
    word_array.collect do |word|
      word << "w" if word.start_with?("a","e","i","o","u","A","E","I","O","U")
      until word.start_with?("a","e","i","o","u","A","E","I","O","U")
        word << word[0]
        word[0] = ""
      end
        word << "ay"
    end
    word_array.join(" ")
  end

end
