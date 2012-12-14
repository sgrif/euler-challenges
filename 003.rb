def isPrime(x)
	i=2
	while(i*i <= x)
		return false if x%i == 0
		i += 1
	end
	true
end

x = 600851475143/2
for i in 2..x do
	if 600851475143%i == 0 && isPrime(600851475143/i)
		puts 600851475143/i
		exit
	end
end
puts "FUCK"
