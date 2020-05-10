class PigLatinizer

	def starts_with_vouls?(word)
		first_letter = word[0]
		'aAeEiIoOuU'.include?(first_letter)
	end

	def bring_first_letter_end(word)
		first_letter = word[0]
		new_word = word.reverse.chop.reverse
		new_word += first_letter
	end

	def number_starting_cons(word)
		count = 0
		word.split('').each { |letter|
			if starts_with_vouls?(letter)
				return count
			else
				count += 1
			end
		}
		count
	end

	def latinise_w_cons(word)
		n = number_starting_cons(word)
		n.times do
			# binding.pry
			word = bring_first_letter_end(word) 	
			# binding.pry
		end
		word += 'ay'
	end

	def latinise_w_vouls(word)
		word += 'way'
	end

	def latinise_word(word)
		starts_with_vouls?(word) ? latinise_w_vouls(word) : latinise_w_cons(word)
	end

	def piglatinize(str)
		str.split(' ').map { |word|
			latinise_word(word)
		}.join(' ')
	end

end