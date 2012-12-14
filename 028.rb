def sum_spiral(size)
	ret = 1
	step = 1
	(2..size).step 2 do |x|
		4.times do
			step += x
			ret += step
		end
	end
	ret
end

puts sum_spiral 1001
