class PigLatinizer

  def piglatinize(text)
    text.strip!
    return_text = ""

    # Check to see if it's a sentence
    if text.include?(" ")
      my_array = text.split(" ")
      my_array.each do |word|
        return_text += piglatinize(word) + " "
      end
    else
      if text.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
        return_text = text + "way"
      else
        split_position = text.index(/[aeiou]/)
        return_text = text.slice(split_position..text.length) + text.slice(0..(split_position-1)) + "ay"
      end
    end

    return_text.strip
  end

end
