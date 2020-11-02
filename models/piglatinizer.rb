class PigLatinizer
  
  def piglatinize_word(word)
    pigword = word.split('')
    if /\A[aeiouAEIOU]/.match(word)
      pigword.push('way')
      pigged = pigword.join('')
    else
      if /[^aeiouAEIOU]/.match(pigword[0]) && /[^aeiouAEIOU]/.match(pigword[1]) && /[^aeiouAEIOU]/.match(pigword[2]) 
        append = "#{pigword[0] + pigword[1] + pigword[2]}ay"
        edited = pigword.drop(3)
        edited.push(append)
        pigged = edited.join('')
      elsif /[^aeiouAEIOU]/.match(pigword[0]) && /[^aeiouAEIOU]/.match(pigword[1])
        append = "#{pigword[0] + pigword[1]}ay"
        edited = pigword.drop(2)
        edited.push(append)
        pigged = edited.join('')
      else 
        pigword.push(word[0] + 'ay')
        pigword.shift
        pigged = pigword.join('')
      end
    end
    pigged
  end
  
  def piglatinize(user_phrase)
    pgphrase = user_phrase.split(' ').collect {|word| self.piglatinize_word(word)}
    pgphrase.join(' ')
  end
end