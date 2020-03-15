class PigLatinizer
	

	def piglatinize(phrase)
		phrase_array = phrase.split(" ")
		@piglatinized_phrase = phrase_array.map {|word| piglatinize_word(word)}
		@piglatinized_phrase.join(" ")
	end


	def piglatinize_word(word)
		vowel_index = word.downcase.index(/[aeiou]/)
		if vowel_index == 0
			result = word + "way"
		else
			front_part = word.slice!(0...vowel_index)
			result = word + front_part + "ay"
		end
	end

end