class PigLatinizer

  def piglatinize(words)
    wordsArray = words.split(" ");
    pigLatinizedArr = []
    wordsArray.each do |word|
      if word.match(/^[aeiouAEIOU]/)
        # starts with vowel
        pigLatinizedArr << word + "way";
      else
        consonants = word.slice(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/)
        vowels = word.slice(consonants.length, word.length)
        pigLatinizedArr << vowels + consonants + "ay";
      end
    end
    @pigLatinizedText = pigLatinizedArr.join(" ")
  end
end
