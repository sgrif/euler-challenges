max = 0
for x in 100..999 do
	for y in 100..999 do
		s = x * y
		if s > max && s.to_s == s.to_s.reverse
			max = s
		end
	end
end
puts max
