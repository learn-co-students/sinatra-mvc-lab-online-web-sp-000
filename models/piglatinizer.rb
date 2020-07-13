class PigLatinizer
  attr_accessor :phrase

  def initialize
    @phrase = phrase
  end

  def vowel(str)
    if str.scan(/[aeiou]/i).length>0
      true
    else
      false
    end
  end

  def piglatinize(phrase)
    mysplit = phrase.gsub(/\s+/m, ' ').strip.split(" ")
    mypl = ""
    mysplit.each do |word|
      puts word
      if word.length > 1 && vowel(word[0])==false
        split_array = word.split /([aeiou].*)/i
        second = split_array[0] + "ay"
        first = split_array[1]
        final = first + second
        mypl << final + " "
      else
        final = word + "way"
        mypl << final + " "
      end
    end
    mypl = mypl.chomp(" ")
    mypl
  end
end
