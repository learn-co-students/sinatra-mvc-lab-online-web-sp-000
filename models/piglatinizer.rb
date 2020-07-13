class PigLatinizer
  def translate(word)
    if word[0].downcase[/[aeiou]/]
      word+='w'
    else
      while !word[0].downcase[/[aeiou]/]
        word = word[1..-1]+word[0]
      end
    end
    word+'ay'
  end

  def piglatinize(text)
    text.split(' ').map {|word| translate(word)}.join(' ')
  end

end
