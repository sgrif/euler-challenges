require 'mathn'

def quad(a, b, n)
	n**2 + a*n + b
end

def quad_cons_primes(a, b)
	n = 0
	while quad(a, b, n).prime? do
		n += 1
	end
	n
end

greatest = 0
ret = 0

Prime.each(1000) do |a|
	Prime.each(1000) do |b|
		[[a,b],[0-a,b],[a,0-b],[0-a,0-b]].each do |set|
			x = quad_cons_primes(set[0],set[1])
			if x > greatest
				greatest = x
				ret = set
			end
		end
	end
end
puts ret[0]*ret[1]
