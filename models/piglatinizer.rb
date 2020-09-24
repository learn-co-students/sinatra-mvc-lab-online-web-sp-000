require 'pry'

class PigLatinizer
	attr_reader :text

	def initialize
	end


	def piglatinize(text)
		
		if text.split.length > 1
			new_words = split_sentence(text)
			new_phrase = ""
			new_words.each do |w|
				w = piglatinize(w)
				new_phrase << w	+ " "
			end
			return new_phrase.chop
		end


		vowel_index = text.index(/[aeiouAEIOU]/)
		if vowel_index > 0
			new_word = text[vowel_index..text.length] + text[0..vowel_index-1] + "ay"
		else
			new_word = text + "way"
		end

		new_word

	end


	def split_sentence(text)
		text = text.split
	end

end
