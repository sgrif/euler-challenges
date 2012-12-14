@sum = 0
(2**1000).to_s.chars do |c|
	@sum += c.to_i
end
puts @sum
