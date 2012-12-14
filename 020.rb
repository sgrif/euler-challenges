class Integer
	@@cache ||= Array.new
	def fact
		@@cache[self] ||= if self == 2 then self else self * (self-1).fact end
	end
end

puts 100.fact.to_s.split('').reduce(0) {|sum, x| sum += x.to_i}
