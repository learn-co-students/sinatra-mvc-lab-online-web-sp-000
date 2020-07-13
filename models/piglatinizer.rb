require 'pry'

class PigLatinizer

  def piglatinize(word)
    words = word.split(" ")
    pig_latinize = ""
    if words.size > 1
      words.each do |w|
        pig_latinize +=
            self.class.is_vowel?(w[0]) ? pig_latinize = w + "way " : pig_latinize = cluster_consonants(w) + "ay "
      end
    else
      pig_latinize = self.class.is_vowel?(word[0]) ? pig_latinize = word + "way" : pig_latinize = cluster_consonants(word) + "ay"
    end
    pig_latinize.strip
  end

  def self.is_vowel?(c)
    if (['a', 'e', 'i', 'o', 'u'].include?(c.downcase))
      true
    else
      false
    end
  end

  def cluster_consonants(text)
    clustered = text
    loop do
      clustered = clustered.slice!(1..-1) + clustered
      break if self.class.is_vowel?(clustered[0])
    end
    clustered
  end
end