class PigLatinizer
  def piglatinize(string)
    split_by_vowel = string.split(/([aeiou].*)/)
    if split_by_vowel[0] == "" || string =~ /^[aeiou]/i
      string + "way"
     else
      split_by_vowel[1] + (split_by_vowel[0] + "ay")
    end
  end

  def pig_latin(string)
    split_string =string.split(" ").delete_if{|word|word.empty?}
      split_string.map do |word|
      piglatinize(word)
    end.join(" ")
  end
end
