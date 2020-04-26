class PigLatinizer
	def piglatinize_word(word)
	  chars = word.split("")
	  vowels = /[aeiouAEIOU]/

	  if chars[0].match(vowels)
	    word + "way"
	  else
	    while !chars[0].match(vowels)
	      chars << chars.shift
	    end
	    chars.join("") + "ay"
	  end
	end

	def piglatinize(phrase)
		phrase.split(" ").map do |word|
			piglatinize_word(word)
		end.join(" ")
	end
end
