class PigLatinizer
  
  attr_reader :words
  
def piglatinize(words)
  pig_latin_phrase=words.split(" ").map do |word|
  
    if word.start_with?(/[aeiou]/i)
      word<<"way" 
    
    elsif word.match(/\b[bcdfghjklmnpqrstvwxz]{3}/i)
      text_array=word.split(//)
      phrase=["#{text_array[0]}", "#{text_array[1]}", "#{text_array[2]}", "ay"]
      pl_phrase=text_array.drop(3)+phrase
      pl_phrase.join 
    
    elsif word.match(/\b[bcdfghjklmnpqrstvwxz]{2}/i)
      text_array=word.split(//)
      phrase=["#{text_array[0]}", "#{text_array[1]}", "ay"]
      pl_phrase=text_array.drop(2)+phrase
      pl_phrase.join 
    
    elsif word
      phrase=word.split(//)
      text=["#{phrase[0]}", "ay"]
      pig_latin=phrase.drop(1)+text
      pig_latin.join
    end
  end
pig_latin_phrase.join(" ")
end

end
#PigLatinizer.new.piglatinize("I love programming")





#latin.piglatinize("please")
#latin.piglatinize("pork")
#latin.piglatinize("I")
#latin.piglatinize("a")
#latin.piglatinize("spray")


 #def piglatinize(words)
   # if words.start_with?(/[aeiou]/i)
    #  words<<"way" 
    
    #elsif words.match(/\b[bcdfghjklmnpqrstvwxz]{3}/i)
     # text_array=words.split(//)
      #phrase=["#{text_array[0]}", "#{text_array[1]}", "#{text_array[2]}", "ay"]
      #pl_phrase=text_array.drop(3)+phrase
      #pl_phrase.join 
    
    #elsif words.match(/\b[bcdfghjklmnpqrstvwxz]{2}/i)
     # text_array=words.split(//)
      #phrase=["#{text_array[0]}", "#{text_array[1]}", "ay"]
      #pl_phrase=text_array.drop(2)+phrase
      #pl_phrase.join 
    
    #else
     # phrase=words.split(//)
      #text=["#{words[0]}", "ay"]
      #pig_latin=phrase.drop(1)+text
      #pig_latin.join
    #end
  #end

#words="programming"
#pig_latin_phrase=words.split(" ").map do |word|
 # if word.start_with?(/[aeiou]/i)
  #  word<<"way" 
  #elsif word.match(/\b[bcdfghjklmnpqrstvwxz]{3}/i)
   # text_array=word.split(//)
    #phrase=["#{text_array[0]}", "#{text_array[1]}", "#{text_array[2]}", "ay"]
   # pl_phrase=text_array.drop(3)+phrase
    #pl_phrase.join 
  #elsif word.match(/\b[bcdfghjklmnpqrstvwxz]{2}/i)
   # text_array=word.split(//)
    #phrase=["#{text_array[0]}", "#{text_array[1]}", "ay"]
    #pl_phrase=text_array.drop(2)+phrase
    #pl_phrase.join 
  #else
   # phrase=word.split(//)
    #text=["#{words[0]}", "ay"]
    #pig_latin=phrase.drop(1)+text
    #end
  #end
 # pig_latin_phrase.join(" ")
#end













 



