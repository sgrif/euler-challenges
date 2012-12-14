for a in 3..1000
	for b in a+1..1000
		c = Math.sqrt(a*a+b*b)
		if c.real? && a+b+c == 1000
			puts a*b*c
			exit
		end
	end
end
