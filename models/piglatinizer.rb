class PigLatinizer 
  attr_reader :text

  def piglatinize(text)  
    words = text.split(" ")
     
    words.map do |word|
      if word.downcase.start_with?('a','e','i','o','u')
        word.concat('way')
        word
      else
        letters = word.split(/[aeiou]/)
        word = word.delete_prefix(letters[0])
        word = word << letters[0]
        word.concat('ay') 
        word
      end
    end.join(' ')
  end

 end