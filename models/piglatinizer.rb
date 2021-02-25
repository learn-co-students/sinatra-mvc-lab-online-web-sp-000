class PigLatinizer

   


def piglatinize(text)
    vowels = ["a","e","i","o","u","I","A","E","O","U"]
    collection = []
    words = text.split(' ') 
    words.each do |word|
    if vowels.include?(word.chars.first)
    collection << word + "way"
else  
    collection << helper_method(word)
end 
end
collection.join(' ')
end


def helper_method(word)
    vowels = ["a","e","i","o","u","I","A","E","O","U"]
    characters = word.chars
    first_vowel_char = characters.find{|char| vowels.include?(char)} 
    fvc_idx = word.index(first_vowel_char)
     word[fvc_idx..-1] + word[0...fvc_idx] + "ay"
end
end
