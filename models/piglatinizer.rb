
class PigLatinizer

  def initialize
  end
    

  def piglatinize(text)
    word_or_phrase = ""
    text.split(" ").each do |w|
      if /^[aeiou]/i.match(w)
        word_or_phrase += " #{w}way"
      else
        g = w.split(/([aeiou].*)/)      #g = group of letters
        word_or_phrase += " #{g[1]}#{g[0]}ay"
      end
    end
    word_or_phrase.strip
  end
    
end
