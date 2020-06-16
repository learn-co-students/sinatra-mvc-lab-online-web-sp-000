require 'pry'

class PigLatinizer

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect {|w| piglatinize(w)}.join(" ")
  end
  
  def piglatinize(string)
    string = string.split('')
    if string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[2].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      second = string.shift
      third = string.shift
      "#{string.join}#{first}#{second}#{third}ay"
    elsif string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      second = string.shift
      "#{string.join}#{first}#{second}ay"
    elsif string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      "#{string.join}#{first}ay"
    elsif string.first.downcase.match(/[aeoui]/)
      "#{string.join}way"
    else
      string.join
    end
  end
end