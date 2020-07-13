require 'pry'
class PigLatinizer
  def piglatinize (phrase)
    phrase_array = phrase.split(' ')
    final_phrase = []
    phrase_array.each do |word|
      if word.length == 1
        final_phrase << word + "way"
      else
        word_array = word.split(//)
        if (word_array[0] == "p" && word_array[1] == "l" || word_array[0] == "t" && word_array[1] == "h" || word_array[0] == "p" && word_array[1] == "r" || word_array[0] == "w" && word_array[1] == "h" || word_array[0] == "s" && word_array[1] == "k")
          word_array.push(word_array[0])
          word_array.push(word_array[1])
          word_array.delete_at(0)
          word_array.delete_at(0)
        elsif (word_array[0] == "s" && word_array[1] == "p" && word_array[2] == "r" || word_array[0] == "S" && word_array[1] == "t" && word_array[2] == "r")
          word_array.push(word_array[0])
          word_array.push(word_array[1])
          word_array.push(word_array[2])
          word_array.delete_at(0)
          word_array.delete_at(0)
          word_array.delete_at(0)
        elsif (word_array[0] == "u" || word_array[0] == "E" || word_array[0] == "o" || word_array[0] == "a" || word_array[0] == "i" || word_array[0] == "e" || word_array[0] == "O")
          word_array.push("w")
        else
          word_array.push(word_array[0])
          word_array.delete_at(0)
        end
        word_array.push("ay")
        final_phrase << word_array.join
      end
    end
    if final_phrase.length == 1
      final_phrase[0]
    else
      final_phrase.join(" ")
    end
  end
end
