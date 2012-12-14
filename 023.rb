class Integer
	def sum_divisor
		t = Math.sqrt(self)
		(2..t).reduce(1) {|sum, x| sum + (x+self/x if self%x == 0).to_i - (t if t == t.to_i).to_i}
	end
end

@abn = Array.new
puts (2..28123).reduce(1) { |sum, x|
	@abn[x] = x if x.sum_divisor > x
	sum + (x unless @abn.detect{|y| y and @abn[x-y]}).to_i
}
