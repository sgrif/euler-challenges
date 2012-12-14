@cache = Array.new
def fib(x)
	return 1 if x < 2
	return @cache[x] unless @cache[x].nil?
	ret = fib(x-1) + fib(x-2)
	@cache[x] = ret
	ret
end

x = 1
n = 0
while fib(x) <= 4000000 do
	n += fib(x) if fib(x)%2 == 0
	x += 1
end
puts n
