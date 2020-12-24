class PigLatinizer
  def initialize
  end 
  
  def piglatinize(words)
    words.split(" ").map{|entry| piglatinize_word(entry)}.join(" ")
  end 
  
  def piglatinize_word(entry)
        first_vowel_index = entry =~ /[aeiouAEIOU]/
        puts first_vowel_index
        out = ""
      if(first_vowel_index.to_i == 0)
        puts "inside"
        out = "#{entry}way"
      else 
        out =  "#{entry[first_vowel_index..-1]}#{entry[0..(first_vowel_index-1)]}ay"
      end
      out
  end
end