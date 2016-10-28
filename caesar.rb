def cipher (sentence, shift_value)
	letters = sentence.split("")
	letter_A = 65
	letter_Z = 90

	index = 0
	letters.each do
		letters[index] = letters[index].upcase
		index+=1
	end

	index = 0

	# change each letter to int val and shift and change back to str
	letters.each do |letter| 
		letter = letter.ord
		
		if letter >= letter_A && letter <= letter_Z
			letters[index] = letter
			
			letters[index] = letters[index] - shift_value
			if letters[index] <= letter_A
				val = letter_A - letters[index]
				letters[index] = letter_Z - val
			end

			letters[index] = letters[index].chr.downcase

		end

		index += 1
	end
	
	puts letters.join.capitalize
	
	
end

cipher("D gjqy mpvt!", 20)