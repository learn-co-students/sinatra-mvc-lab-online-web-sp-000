class PigLatinizer

  def piglatinize(string)
    string.split(" ").count != 1 ? piglatinize_sentence(string) : piglatinize_word(string)
  end
    
  def piglatinize_sentence(sentence)
    sentenceArray = sentence.split(" ")
    newSentenceArray = []
    sentenceArray.each do |word|
      newSentenceArray << piglatinize_word(word)
    end
    newSentenceArray.join(" ") 
  end

  def piglatinize_word(word)
    array = word.split("")
    newArray = []
    i = 0
    while !(array[i].match?(/[aeiouAEIOU]/)) && i < array.count
      newArray << array[i]
      i += 1
    end
    newArray.count.times {array.shift}
    newString = array.join("") + newArray.join("")
    word[0].match?(/[aeiouAEIOU]/)? newString + "way": newString +"ay"
  end
  
end