class PigLatinizer
    def piglatinize(user_phrase)
    words = user_phrase.split(" ")
    piglatin = words.collect do |w|
      if w =~ /\A([aeiou])/i
        "#{w}way"
      else arr = w.split(/([aeiou].*)/i)
        "#{arr[1]}#{arr[0]}ay"
      end
    end
    piglatin.join(" ")
  end
end