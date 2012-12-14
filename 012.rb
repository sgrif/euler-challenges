x, y = 0, 0
while true
	y += x
	x += 1
	r = 0
	for z in 1..Math.sqrt(y)
		r += 2 if y % z == 0
	end
	puts "#{x} #{y}"
	exit if r > 499
end
