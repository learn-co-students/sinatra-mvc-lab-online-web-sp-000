class PigLatinizer

  def piglatinize(text)
    words = split_text(text) #array of words 1 to many
    #iterate over each word
    words.map do |word|
      #Convert each word to pig latin
      if word.start_with?(/[aeiouAEIOU]/)
        "#{word}way"
      else
        word_start = word.slice!(/^[^aeiou]{1,3}/)
        "#{word + word_start}ay"
      end
    end.join(" ") #return a string
  end

  def split_text(text)
    text.split(" ")
  end

end