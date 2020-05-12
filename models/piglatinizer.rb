require 'pry'

class PigLatinizer
  def initialize
  end

  def piglatinize(text)
    words = text.split(" ")
    arr = []
    words.each do |word|
      new_word = word.split(/([AEIOUaeiou].*)/).reject{|w| w.empty?}
      if new_word.length == 1
        arr.push("#{new_word[0]}way")
      else
        arr.push("#{new_word[1]}#{new_word[0]}ay")
      end
    end
    arr.join(" ")
  end


end