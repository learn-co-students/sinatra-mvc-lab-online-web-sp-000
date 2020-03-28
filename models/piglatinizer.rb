class PigLatinizer
	attr_reader :text

	# def initialize(text)
	# 	@text = text.downcase
	# end

	def piglatinize(text)
		text_array = text.split(" ")
		latinized_array = []
		text_array.each do |word|
			if !word[0].scan(/[aeiouAEIOU]/).empty?
				word = word + "way"
			else
				while word[0].scan(/[aeiouAEIOU]/).empty?
					word << word[0]
					word = word.sub(word[0], "")
				end
				word = word + "ay"
			end	
			latinized_array << word
		end
		latinized_array.join(" ")
	end
end