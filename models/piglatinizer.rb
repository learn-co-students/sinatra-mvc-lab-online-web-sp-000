class PigLatinizer

  def piglatinize(word)

    vowel_list = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    split_index_start = word.index(/[aeiouAEIOU]/)

    if vowel_list.include?(word.split('').first)
      pig_latin_end_of_word = 'way'
    else
      pig_latin_end_of_word = 'ay'
    end

    pig_latin_word = word.slice(split_index_start..-1) + word.slice(0, split_index_start) + pig_latin_end_of_word

  end

end
