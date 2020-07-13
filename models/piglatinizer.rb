class PigLatinizer

  def piglatinize(input)
    if input.split.size==1
      individual(input)
    else
      eachWord(input)
    end
  end

  
  def individual(word)
    new_word=word.split('')
    if new_word.first.match(/[aeoiu]/i)
      new_word.push("way")
    else
      while !new_word.first.match(/[aeoiu]/)
        new_word.push(new_word.first).shift
      end
      new_word.push("ay")
    end
    new_word.join
  end

  def eachWord(sentence)
    arr=sentence.split(" ")
    new_arr=arr.collect do |item|
      individual(item)
    end
    new_arr.join(" ")
  end

end
