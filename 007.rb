def nthPrime(magic)
	primes = [2, 3, 5]
	counter = 3
	upper = magic * Math.log(magic) + magic *(Math.log(Math.log(magic)) - 0.9385)
	sieve = Array.new(upper, true)
	for i in primes
		x = i*i
		while x < upper
			sieve[x] = false
			x += i
		end
	end
	x = 7
	while x < upper
		if sieve[x] == true
			primes[counter] = x
			counter += 1
			if counter == magic
				puts x
				exit
			end
			i = x*x
			while i < upper
				sieve[i] = false
				i += x
			end
		end
		x += 2
	end
end

nthPrime(10001)
