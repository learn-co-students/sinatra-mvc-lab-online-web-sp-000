class PigLatinizer
  def piglatinize(text = nil)
    words = text.split(" ")
    words.map do |word|
      if /^[aeiou]/i.match(word)
        "#{word}way"
      else
        matches = /^([bcdfghjklmnpqrstvwxyz]+)(.*)/i.match(word)
        consonants = matches[1]
        rest = matches[2]
        "#{rest}#{consonants}ay"
      end
    end.join(" ")
  end
end