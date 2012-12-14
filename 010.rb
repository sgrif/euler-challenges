def sumPrimesLessThan(magic)
	primes = [2, 3, 5]
	sum = 10
	sieve = Array.new(magic, true)
	for i in primes
		x = i*i
		while x < magic
			sieve[x] = false
			x += i
		end
	end
	x = 7
	while x < magic
		if sieve[x] == true
			sum += x
			i = x*x
			while i < magic
				sieve[i] = false
				i += x
			end
		end
		x += 2
	end
	puts sum
end

sumPrimesLessThan(2000000)
