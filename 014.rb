@cache = Hash.new
def collatz(n)
	return 1 if n < 2
	return @cache[n] if @cache[n]
	if n % 2 == 0
		ni = n/2
	else
		ni = 3*n+1
	end
	@cache[n] = collatz(ni) + 1
end

max = 0
mi = 0
for i in 1..1000000
	count = collatz(i)
	if count > max
		mi = i
		max = count
	end
end
puts mi
puts max
