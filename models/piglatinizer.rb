class PigLatinizer 
  require 'pry'
  # attr_reader :text, :vowels, :vowel_sound, :consonant_cluster

  # def piglatinize(text)
  #   @vowels = 'aeiou'
  #   # @vowel_sound  = ['ho']
  #   @consonant_cluster = ['sm', 'st', 'gl', 'tr', 'fl', 'pl', 'pr', 'th' ]
  #   @consonant_cluster2 = ['spr']

  #   text_array = text.split(" ")
  #   return_array = []

  #   text_array.each do |word|
  #     if word.length == 1
  #       word = word + "way"
  #       return_array << word
  #     elsif @vowels.include?(word[0].downcase) #|| @vowel_sound.include?(word[0..1])
  #       word = word + "way"
  #       return_array << word
  #     elsif @consonant_cluster2.include?(word[0..2])
  #       first_letters = word[0..2]
  #       word.slice!(0..2)
  #       word = word + first_letters + "ay"
  #       return_array << word
  #     elsif @consonant_cluster.include?(word[0..1])
  #       first_letters = word[0..1]
  #       word.slice!(0..1)
  #       word = word + first_letters + "ay"
  #       return_array << word
  #     else
  #       first_letter = word[0]
  #       word.slice!(0)
  #       word = word + first_letter + "ay"
  #       return_array << word
  #     end 
  #   end

  #   return_array.join(" ")
  # end

  
  def piglatinize(text)
    words = text.split(" ")
    pig_latin = []
    words.each do |word|
      if word.length == 1
        pig_latin << word + "way"
      elsif word.match(/^[aeiou]/i)
        pig_latin << word + "way"
      else
        # binding.pry
        consonants = word.split(/[aeiou]/).first
        cut = consonants.length
        pig_latin << word[cut...word.length] + consonants + "ay"
      end
    end
    pig_latin.join(" ")
  end

end
