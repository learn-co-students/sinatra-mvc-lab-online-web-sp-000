class PigLatinizer
  def piglatinize(input)
    processed = input.split(" ")
    output = []
    processed.each do |word|
      if word[0].scan(/[aeiouAEIOU]/).count > 0
        new_word = word+"way"
      elsif word[0..1].scan(/[aeiou]/).count > 0
        new_word = word[1..word.length]+word[0]+"ay"
      elsif word[0..2].scan(/[aeiou]/).count > 0
        new_word = word[2..word.length]+word[0..1]+"ay"
      else
        new_word = word[3..word.length]+word[0..2]+"ay"
      end
      output << new_word
    end
    output.join(" ")
  end

end
