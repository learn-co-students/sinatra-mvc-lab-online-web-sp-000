class PigLatinizer

  def piglatinize(sent)
    result = sent.split(" ").map do |word|
      if word[0].match(/[AEIOUaeiou]/)
        word + "way"
      else
        word = word.gsub("qu", " ") #gsub replaces all occurences with the second argument
        word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay') # (^)finds the start of the word (^) and grab the subgroup
        word = word.gsub(" ", "qu")
      end
    end
    result.join(" ")
  end
end
