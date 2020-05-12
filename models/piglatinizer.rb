class PigLatinizer

  attr_reader :text

  def split_up(text)
    array = text.split(" ")
    array.map do |word|
      piglatinize(word)
    end
  end

  def piglatinize(text)
    if text.include?(" ")
       @converted = split_up(text).join(" ") #if it's a phrase split it up and send it through again
     elsif ["a","e","i","o","u"].include?(text[0].downcase)
       @converted = text + "way" #if it starts with a vowel then add way
     else
        parts = text.split(/([aeiou].*)/) #if it's a word with a consonant then get that section and move it the end and then add way
        @converted = parts[1]+parts[0]+"ay"
     end
   end

end
