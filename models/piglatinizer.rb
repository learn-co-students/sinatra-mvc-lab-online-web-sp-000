class PigLatinizer

  def piglatinize(word)

    vowel_list = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

    word_split_by_space = word.split(' ')

    pig_latin_word = ""
    word_split_by_space.each do |w|

      split_index_start = w.index(/[aeiouAEIOU]/)

      if vowel_list.include?(w.split('').first)
        pig_latin_end_of_word = 'way'
      else
        pig_latin_end_of_word = 'ay'
      end

      if w == word_split_by_space.last
        pig_latin_word += w.slice(split_index_start..-1) + w.slice(0, split_index_start) + pig_latin_end_of_word
      else
        pig_latin_word += w.slice(split_index_start..-1) + w.slice(0, split_index_start) + pig_latin_end_of_word + ' '
      end

    end

    pig_latin_word

  end

end
