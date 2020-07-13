class PigLatinizer

  def piglatinize(words)
    words_arr = words.split(" ")
    words_arr.map do |word|
      if "aeiou".include?(word[0].downcase)
        word + "way"
      else
        slice_at_idx = find_first_vowel_idx(word)
        first_char = word.slice!(0, slice_at_idx)
        word + first_char + "ay"
      end
    end.join(" ")
  end

  def find_first_vowel_idx(word)
    vowels = "aeiou"
    word.downcase.split("").each_with_index do |char, idx|
      return idx if vowels.include?(char)
    end
  end
end
