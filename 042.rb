class String
	@@alphabet = ("A".."Z").to_a

	def char_index
		@@alphabet.index(self) + 1
	end

	def sum_chars
		chars.inject(0) { |sum, c| sum + c.char_index }
	end
end

class Integer
	def triangle?
		(x = Math.sqrt(8*self+1)) == x.to_i
	end
end

puts gets.sub("\n", '').split(',').select { |word| word.sum_chars.triangle? }.size
