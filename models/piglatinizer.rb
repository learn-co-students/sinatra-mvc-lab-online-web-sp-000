class PigLatinizer
  
  def piglatinize(content)
    words_split = content.split(" ")
    pig_latin_array = []
    words_split.each do |word|
      if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
        new_word = "#{word}" + "way"
      else
        parts = word.split(/([aeiou].*)/)
        new_word = "#{parts[1]}" + "#{parts[0]}" + "ay"
      end
      pig_latin_array << new_word
    end
    @pig_latin = pig_latin_array.join(" ")
  end

end