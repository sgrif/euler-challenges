ret = 0
dupes = Hash.new
(2..100).each do |x|
	(2..100).each do |y|
		z = x**y
		ret += 1 unless dupes[z]
		dupes[z] = true
	end
end

puts ret
